class MedicinesController < ApplicationController
  before_action :find_medicine, only: [:edit, :update, :destroy]
  helper_method :sort_column, :sort_direction

  def index
    @medicines = Medicine.all.order("LOWER(#{sort_column}) #{sort_direction}")
  end

  def new
    @medicine = Medicine.new
  end

  def create
    @medicine = Medicine.create(medicine_params)
    if @medicine.save
      flash[:success] = "Your medicine was created."
      redirect_to root_path
    else
      flash.now[:error] = "Sorry, your medicine could not be saved. Please review your changes and try again."
      render :new
    end
  end

  def edit
  end

  def update
    if @medicine.update(medicine_params)
      flash[:success] = "Your medicine was updated."
      redirect_to root_path
    else
      flash.now[:error] = "Sorry, your medicine could not be saved. Please review your changes and try again."
      render :edit
    end
  end

  def destroy
    @medicine.destroy
    redirect_to root_path
  end

  private

  def medicine_params
    params.require(:medicine).permit(:name, :score)
  end

  def find_medicine
    @medicine = Medicine.find(params[:id])
  end

  def sortable_columns
    ["name", "score"]
  end

  def sort_column
    sortable_columns.include?(params[:column]) ? params[:column] : "name"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

end

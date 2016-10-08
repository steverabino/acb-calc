class WelcomeController < ApplicationController
  def index
    @medicines = Medicine.all
    @brands = Brand.all
  end
end

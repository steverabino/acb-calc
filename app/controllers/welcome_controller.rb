class WelcomeController < ApplicationController
  def index
    @medicines = Medicine.all
  end
end

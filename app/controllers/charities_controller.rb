class CharitiesController < ApplicationController
  before_action :set_charity, only: [:show, :edit, :update, :destroy]

  def set_charity
    @charity = Charity.find(params[:id])
  end

  def index
    @charities = Charity.all
  end

  def show
  end

  private

  def charity_params
    params.require(:charity).permit(:name, :category, :photo, :description)
  end
end

class CharitiesController < ApplicationController
  before_action :set_charity, only: [:show, :edit, :update, :destroy]

  def set_charity
    @charity = Charity.find(params[:id])
  end

  def index
    if params[:query].present?
      sql_query = " \
        charities.name @@ :query \
        OR charities.category @@ :query \
        OR charities.description @@ :query \
      "
      @charities = Charity.where(sql_query, query: "%#{params[:query]}%")
    else
      @charities = Charity.all
    end
  end

  def show
  end

  private

  def charity_params
    params.require(:charity).permit(:name, :category, :photo, :description)
  end
end
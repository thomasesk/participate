class DonationsController < ApplicationController
  before_action :set_donation, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token

  def set_donation
    @donation = Donation.find(params[:id])
  end

  def index
  end

  def show
  end

  def new
    # Tout se fait dans le controller des Charities
  end

  def create
    @donation = Donation.new
    @donation.user = current_user
    @donation.charity = Charity.find(params[:charity_id])
    if @donation.save
      redirect_to user_path(current_user.id)
    else
      render :index
    end
  end

  def edit
  end

  # def update
  #   respond_to do |format|
  #     format.html {
  #       @donation.update(donation_params)
  #       @donation.save
  #       redirect_to user_path(current_user.id),
  #       notice: 'Donation was successfully updated.'
  #     }
  #     format.js
  #     format.json { render json: @donation }
  #   end
  # end

  def update
    @donation.update(donation_params)
    @donation.save
    redirect_to user_path(current_user.id)
  end

  def destroy
    @donation.destroy
    redirect_to user_path(current_user.id)
  end

  private

  def donation_params
    params.require(:donation).permit(:share)
  end
end

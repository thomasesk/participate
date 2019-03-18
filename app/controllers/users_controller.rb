class UsersController < ApplicationController
  def show
    @user = current_user
    @donations = current_user.donations.sort_by{ |donation| donation.charity.name }
  end
end

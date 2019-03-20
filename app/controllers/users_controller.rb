class UsersController < ApplicationController
  def show
    @user = current_user
    @donations = @user.donations.sort_by{ |donation| donation.charity.name }
  end
end

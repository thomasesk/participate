class UsersController < ApplicationController
  def show
    @user = current_user
    @donations = @user.donations.sort_by{ |donation| donation.charity.name }
    @value = @donations.map { |donation| [donation.charity.name, donation.share] }
    @total = 0
    @donations.each do |donation|
      @total += donation.share
    end
    @value.unshift(["Remaining part", 100 - @total])
  end
end

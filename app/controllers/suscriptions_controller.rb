class SuscriptionsController < ApplicationController
  before_action :set_user

  def new
  end

  def create
  customer = Stripe::Customer.create(
    source: params[:stripeToken],
    email:  params[:stripeEmail]
  )

  subscription = Stripe::Subscription.create({
    customer: customer.id,
    items: [{plan: params[:plan]}],
  })

  @user.update(stripe_id: customer.id, plan_id: params[:plan])
  redirect_to user_path(@user)

  rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to new_user_payment_path(@user)
  end

  private

  def set_user
    @user = current_user
  end
end

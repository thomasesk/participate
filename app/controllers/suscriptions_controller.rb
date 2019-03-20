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

  @user.update(stripe_id: customer.id, plan_id: params[:plan], suscription_id: subscription.id, suscription_item_id: subscription.items.data[0].id, total_amount: Stripe::Plan.all[:data][Stripe::Plan.all[:data].map{|k| k[:id] == params[:plan]}.index(true)][:amount] / 100)
  redirect_to user_path(@user)

  rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to new_user_payment_path(@user)
  end

  def edit
  end

  def update
    Stripe::Subscription.update(
      @user.suscription_id,
      {
        cancel_at_period_end: false,
        items: [
          {
            id: @user.suscription_item_id,
            plan: params[:plan],
          }
        ],
      }
    )
    @user.update(plan_id: params[:plan], total_amount: Stripe::Plan.all[:data][Stripe::Plan.all[:data].map{|k| k[:id] == params[:plan]}.index(true)][:amount] / 100)
    redirect_to user_path(@user)
  end

  def destroy
    subscription = Stripe::Subscription.retrieve(@user.suscription_id)
    subscription.delete
    @user.update(plan_id: "", suscription_id: "", suscription_item_id: "", total_amount: 0)
    redirect_to user_path(@user)
  end

  private

  def set_user
    @user = current_user
  end
end

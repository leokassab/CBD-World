class OrdersController < ApplicationController
  skip_before_action :authenticate_user! , only: [:index, :show, :new, :update, :destroy, :update_all_orders]

  def index
    @orders = Order.where(user: current_user)
  end

  def show
    set_order
  end

  def edit
    set_order
  end

  def destroy
    set_order
    @order.destroy
    redirect_to cart_user_path(current_user)
  end

  def new
    @flower = Flower.find(params[:flower_id])
    @user = current_user
    @order = Order.new
  end

  def create
    @flower = Flower.find(params[:flower_id])
    payed_or_not = params[:from] ? false : true
    order = Order.new(paid: payed_or_not, flower_id: @flower.id, user_id: current_user.id)
    if order.save
      if params[:from]
        redirect_to cart_user_path(current_user)
      else
        redirect_to orders_path
      end
    else
      render :new
    end
  end

  private

  def set_order
    @order = Order.find(params[:id])
  end
end

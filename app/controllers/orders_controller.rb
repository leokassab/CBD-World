class OrdersController < ApplicationController

  def index
    @orders = Order.where(user: current_user)
  end

  def show
    my_order
  end

  def edit
    my_order
  end

  def destroy
    my_order
    @order.destroy
    redirect_to orders_path
  end

  def new
    @flower = Flower.find(params[:flower_id])
    @user = current_user
    @order = Order.new

  end

  def create
    @flower = Flower.find(params[:flower_id])
    order = Order.new(paid: true, flower_id: @flower.id, user_id: current_user.id)
    if order.save
      redirect_to orders_path
   else
     render :new
   end

  def destroy

  end

  end

  private

  def my_order
    @order = Order.find(params[:id])
  end
end

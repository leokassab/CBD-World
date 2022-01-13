class OrdersController < ApplicationController
  def index
    my_orders = Order.where(user: current_user)
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

  private

  def my_order
    @order = Order.find(params[:id])
  end
end

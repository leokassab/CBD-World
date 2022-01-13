class OrdersController < ApplicationController
  def show
    set_order
  end

  private

  def set_order
    @order = Order.find(params[:id])
  end
end

class UsersController < ApplicationController
  def show
    set_user
    authorize @user
  end

  def sales
    set_user
    authorize @user
    @sales = []

    @user.flowers.each do |flower|
      flower.orders.order(created_at: :desc).each do |order|
        @sales << order
      end
    end
  end

  def update_all_orders
    @user = current_user
    authorize @user
    current_user.orders.where(paid: false).each do |order|
      order.update(paid: true)
    end
    redirect_to orders_path
  end


  def cart
    set_user
    authorize @user
  end

  private

  def set_user
    @user = current_user
  end
end

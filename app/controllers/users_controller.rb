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
      flower.orders.each do |order|
        @sales << order
      end
    end
  end

  private

  def set_user
    @user = current_user
  end
end

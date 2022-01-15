class UsersController < ApplicationController
  def show
    set_user
    authorize @user
  end

  private

  def set_user
    @user = current_user
  end
end

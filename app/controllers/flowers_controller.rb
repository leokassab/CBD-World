class FlowersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @flowers = policy_scope(Flower.all)
  end

  def show
    set_flower
    authorize @flower
  end

  def new
    @flower = Flower.new
    authorize @flower
  end

  def create
    @flower = Flower.new(flower_params)
    @flower.user =  current_user
    authorize @flower
    if @flower.save
      redirect_to flower_path(@flower)
    else
      render :new
    end
  end

  def destroy
    set_flower
    @flower.destroy
    authorize @flower
    redirect_to user_path(current_user)
  end

  def edit
    set_flower
    authorize @flower
  end

  def update
    set_flower
    @flower.user =  current_user
    @flower.update(flower_params)
    authorize @flower
    redirect_to user_path(current_user)
  end

  private

def flower_params
  params.require(:flower).permit(:name, :price, :country, :category , :description, :cbd_ratio, :effect, :flavor, :weight, :photo)
end

  def set_flower
    @flower = Flower.find(params[:id])
  end
end

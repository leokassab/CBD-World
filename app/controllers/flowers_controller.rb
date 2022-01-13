class FlowersController < ApplicationController
  def index
    @flowers = Flower.all
  end

  def show
    set_flower
  end

  def new
    @flower = Flower.new
  end

  def create
    @flower = Flower.new(flower_params)
    @flower.user =  current_user
    if @flower.save
      redirect_to flower_path(@flower)
    else
      render :new
    end
  end

  def destroy
    set_flower
    @flower.destroy
    redirect_to flowers_path
  end

  def edit
    set_flower
  end

  def update
    set_flower
    @flower.update(flower_params)
    redirect_to flowers_path
  end

  def get
  end

  private

def flower_params
  params.require(:flower).permit(:name, :price, :country, :category , :description, :cbd_ratio, :effect, :flavor, :weight, :photo)
end

  def set_flower
    @flower = Flower.find(params[:id])
  end
end

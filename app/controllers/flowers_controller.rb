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
    if @flower.save
      redirect_to flower_path(@flower)
    else
      render :new
    end
  end

private

def flower_params
  params.require(:flower).permit(:name, :price, :country, :type , :description, :cbd_ratio, :effect, :flavor, :weight)
end

def set_flower
  @flower = Flower.find(params[:id])
end
end

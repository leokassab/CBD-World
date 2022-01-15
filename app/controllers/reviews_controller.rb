class ReviewsController < ApplicationController

  def index
    @review = Review.all
  end

  def new
    @flower = Flower.find(params[:flower_id])
    @review = Review.new
  end

  def create
    @review = Review.new(reviews_params)
    @flower = Flower.find(params[:flower_id])
    @user = User.find(params[:user_id])
    @review.flower_id = @flower
    @review.user_id = @user
    if @review.save
      redirect_to flower_path(@flower)
    else
      render :new
    end
  end

  def destroy
    @reviews = Review.find(params[:id])
    @review.destroy

    redirect_to flower_path(@review.restaurant)
  end

  def show
    @review = Review.find(params[:id])
  end

  private

  def reviews_params
    params.require(:review).permit(:grade, :comment) #, :comment, :flowers_id, :user_id)
  end
end

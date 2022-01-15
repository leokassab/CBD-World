class ReviewsController < ApplicationController
  def new
    @flower = @Flower.find(params[:flowers_id])
    @review = @Review.new
  end

  def create
    @review = @Review.new()
    @flower = @Flower.find(params[:flowers_id])
    @user = @User.find(params[:user_id])
    @review.flower_id = @flower
    @review.user_id = @user
    if @review.save
      redirect_to flower_path(@flower)
    else
      render :new
    end

    def destroy
      @reviews = @Review.find(params[:id])
      @review.destroy

      redirect_to flower_path(@review.restaurant)
    end

  end

  def index
    @review = Review.all
  end
  private

  def reviews_params
    params.require(:pemrit).permit(:grade, :comment)
  end
end

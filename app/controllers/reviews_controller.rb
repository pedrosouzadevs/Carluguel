class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @car = Car.find(params[:car_id])
    authorize @review
  end

  def create
    @car = Car.find(params[:car_id])
    @review = Review.new(review_params)
    @review.car = @car
    @review.user = current_user
    authorize @review
    if @review.save
      redirect_to car_path(@car)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :user_id, :car_id)
  end
end

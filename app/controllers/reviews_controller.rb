class ReviewsController < ApplicationController
   before_action :set_car, only: %i[create]

  def create
    @review = Review.new(review_params)
    @review.car = @car
    @review.user = current_user
    if @review.save
      redirect_to car_path(@car)
    else
      render 'bookings/show', status: :unprocessable_entity
    end
  end

  private

  def set_car
    @car = Car.find(params[:car_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end

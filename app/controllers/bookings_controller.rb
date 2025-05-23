class BookingsController < ApplicationController
  before_action :authenticate_user!

  def show
    @booking = Booking.find(params[:id])
    @review = Review.new
  end

  def create
    @car = Car.find(params[:car_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.car = @car


    if @booking.save
      redirect_to booking_path(@booking)
    else
      render "cars/show", status: :unprocessable_entity
    end
  end

  def index
    @bookings = current_user.bookings
    @cars = current_user.cars
  end



  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end

class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
  end



  def index
    @bookings = current_user.bookings
    @cars = current_user.cars

  end
end

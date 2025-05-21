class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])


  def index
    @bookings = Booking.all

  end
end

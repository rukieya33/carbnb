class CarsController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
    @booking = Booking.new
    @reviews = @car.reviews
    @dates_booked = @car.bookings.map {|booking| { from: booking.start_date, to: booking.end_date } }
    @dates_booked << {from: "2025-01-01", to: Date.yesterday.strftime("%Y-%m-%d") }
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    if @car.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def favorite
  @car = Car.find(params[:id])
  redirect_to cars_path, notice: 'Car was successfully added to favorites.'
  end

  private

  def car_params
    params.require(:car).permit(:brand, :model, :rental_options, :rent_price, :description, :features, :photo_url, :transmission, :fuel, :model_year, :seat_capacity)
  end
end

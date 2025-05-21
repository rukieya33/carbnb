class CarsController < ApplicationController
  before_action :authenticate_user!
  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
    @booking = Booking.new
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
    params.require(:car).permit(:brand, :model, :rental_options, :rent_price, :description, :features, :photo, :start_date, :end_date)
  end
end

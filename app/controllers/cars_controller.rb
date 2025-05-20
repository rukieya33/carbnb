class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to @car, notice: 'Car was successfully created.'
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
    params.require(:car).permit(:brand, :model, :rental_option, :rent_price, :description, :features, :start_date, :end_date)
  end
end

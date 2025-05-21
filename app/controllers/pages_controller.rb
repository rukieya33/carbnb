class PagesController < ApplicationController
  def home
    @cars = Car.all
    @nearby_cars = Car.limit(4) # or use location filtering if available
    @favorite_cars = Car.order('RANDOM()').limit(4) # or use a real "favorite" flag
  end
end

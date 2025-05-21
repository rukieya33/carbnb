require 'date'

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Booking.destroy_all
Car.destroy_all
User.destroy_all
# create a user
user1 = User.create!(email:"fdhh@gmail.com", password: "sdfsdfs", first_name: "Saddam",  last_name:"Hussain")
# create a car
car1 = Car.create!(brand: "ferrari", model:"3000", rental_options: "Daily",rent_price: 100, features:"Autopilot", user: user1, photo: "https://images.unsplash.com/photo-1546518071-fddcdda7580a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8bWVyY2VkZXN8ZW58MHx8MHx8fDA%3D" )
# create a booking
Booking.create!(user: user1, car: car1, start_date: "20/05/2025", end_date:"21/05/2025")
puts "Created #{User.count} users, #{Car.count} cars, and #{Booking.count} bookings."
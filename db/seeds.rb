# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Car.destroy_all
User.destroy_all

user1 = User.create!(email:"fdhh@gmail.com", password: "sdfsdfs", first_name: "Saddam",  last_name:"Hussain")
car1= Car.create!(brand: "ferrari", model:"3000", rental_options: "Daily", features:"Autopilot", start_date: "20/05/2025", end_date:"21/05/2025", user: user1 )

puts "#{Car.count}"

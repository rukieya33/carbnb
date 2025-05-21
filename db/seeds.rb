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

user1 = User.create!(email:"saddam@gmail.com", password: "saddam", first_name: "Saddam",  last_name:"Hussain")
user2 = User.create!(email:"hamza@gmail.com", password: "hamzas", first_name: "hamza",  last_name:"sultan")
user3 = User.create!(email:"rukieya@gmail.com", password: "rukieya", first_name: "rukieya",  last_name:"ainoo")
puts "#{User.count}"
ferrari = Car.create!(photo: "https://images.pexels.com/photos/2664399/pexels-photo-2664399.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", brand: "ferrari", model:"3000", rental_options: "Daily", features:"Autopilot", rent_price: 99.90, user: user1 )
mercedes = Car.create!(photo: "https://images.pexels.com/photos/1429775/pexels-photo-1429775.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", brand: "mercedes", model:"E-Class", rental_options: "Daily", features:"Adaptive Cruise Control", rent_price: 49.99,user: user2 )
range_rover =Car.create!(photo: "https://images.pexels.com/photos/225841/pexels-photo-225841.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", brand: "range rover", model:"Velar", rental_options: "Daily", features:"Traffic Sign Recognition", rent_price: 150.60,  user: user3 )
puts "#{Car.count}"
Booking.create!(user: user1, car: ferrari, start_date: Date.new(2025, 5, 25), end_date: Date.new(2025, 5, 27))
Booking.create!(user: user2, car: mercedes, start_date: Date.new(2025, 5, 26), end_date: Date.new(2025, 5, 28))
Booking.create!(user: user3, car: range_rover, start_date: Date.new(2025, 5, 28), end_date: Date.new(2025, 5, 29))
puts "#{Booking.count}"

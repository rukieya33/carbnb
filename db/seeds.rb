
Booking.destroy_all
Car.destroy_all
User.destroy_all


puts "👤 Creating default user..."
user = User.find_or_create_by!(email: "host@example.com") do |u|
  u.password = "securepass"
  u.password_confirmation = "securepass"
  u.first_name = "Demo"
  u.last_name = "User"
end

Car.create!([
  {
    brand: "Tesla",
    model: "Model S",
    rental_options: "Daily, Weekly",
    rent_price: 150.0,
    description: "Luxury electric sedan with autopilot and premium features.",
    features: "Autopilot, Sunroof, Bluetooth",
    start_date: "2025-06-01",
    end_date: "2025-06-10",
    photo_url: "https://images.unsplash.com/photo-1652509407751-be84db9a7bca?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGNhciUyMHRlc2xhJTIwTW9kZWwlMjBTfGVufDB8fDB8fHww",
    user: user
  },
  {
    brand: "Toyota",
    model: "Corolla",
    rental_options: "Daily",
    rent_price: 40.0,
    description: "Reliable and fuel-efficient car, great for city rides.",
    features: "Air Conditioning, USB Charger, Cruise Control",
    start_date: "2025-06-05",
    end_date: "2025-06-12",
    photo_url: "https://images.unsplash.com/photo-1619682817481-e994891cd1f5?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDZ8fGNhciUyMHRveW90YSUyMGNvcm9sbGF8ZW58MHx8MHx8fDA%3D",
    user: user
  },
  {
    brand: "BMW",
    model: "X5",
    rental_options: "Daily, Weekly, Monthly",
    rent_price: 110.0,
    description: "Spacious luxury SUV with great performance and comfort.",
    features: "Leather Seats, Navigation, All-Wheel Drive",
    start_date: "2025-06-15",
    end_date: "2025-06-25",
    photo_url: "https://images.unsplash.com/photo-1674996047492-6b5cdc2dcf0a?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDB8fGNhciUyMEJNVyUyMFg1fGVufDB8fDB8fHww",
    user: user
  },
  {
    brand: "Ford",
    model: "Mustang",
    rental_options: "Daily, Weekend",
    rent_price: 200.0,
    description: "Classic American muscle car with a thrilling drive.",
    features: "V8 Engine, Sport Mode, Convertible",
    start_date: "2025-06-10",
    end_date: "2025-06-14",
    photo_url: "https://images.unsplash.com/photo-1584345604476-8ec5e12e42dd?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTEyfHxjYXIlMjBmb3JkJTIwbXVzdGFuZyUyMHJlZHxlbnwwfHwwfHx8MA%3D%3D",
    user: user
  },
  {
    brand: "Honda",
    model: "Civic",
    rental_options: "Daily, Weekly",
    rent_price: 85.0,
    description: "Compact, efficient, and easy to drive.",
    features: "Bluetooth, Backup Camera, Lane Assist",
    start_date: "2025-06-01",
    end_date: "2025-06-08",
    photo_url: "https://images.unsplash.com/photo-1686074449582-6374eaebacf3?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzZ8fGNhciUyMGhvbmRhJTIwY2l2aWN8ZW58MHx8MHx8fDA%3D",
    user: user
  },
  {
    brand: "Chevrolet",
    model: "Tahoe",
    rental_options: "Weekly, Monthly",
    rent_price: 90.0,
    description: "Large SUV perfect for families and road trips.",
    features: "Third Row Seating, Rear Entertainment, Tow Package",
    start_date: "2025-06-20",
    end_date: "2025-07-01",
    photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7giDUWLmQnzmInwMohiKgajA-I5pGtI8ZOA&s",
    user: user
  },
  {
    brand: "Ferrari", model: "488 Spider", rent_price: 300.0,
    rental_options: "Daily", description: "Supercar with insane performance.",
    features: "Launch Control, Paddle Shift, V8 Twin Turbo",
    start_date: "2025-06-01", end_date: "2025-06-05",
    photo_url: "https://images.unsplash.com/photo-1618631144258-e7ba302a8afe?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTZ8fGNhciUyMGZlcnJhcml8ZW58MHx8MHx8fDA%3D",
    user: user
  },
  {
    brand: "Mercedes-Benz", model: "S-Class", rent_price: 180.0,
    rental_options: "Daily, Weekly", description: "Luxury and comfort.",
    features: "Ambient Lighting, Air Suspension",
    start_date: "2025-06-10", end_date: "2025-06-15",
    photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9nfe314_US9m4A5k_nObFUyXjIClTf0bKRw&s",
    user: user
  },
  {
    brand: "Range Rover", model: "Sport", rent_price: 220.0,
    rental_options: "Weekend", description: "Rugged SUV built for adventure.",
    features: "Panoramic Roof, AWD",
    start_date: "2025-06-12", end_date: "2025-06-20",
    photo_url: "https://images.unsplash.com/photo-1679506640602-0144b3bb5053?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8Y2FyJTIwcmFuZ2UlMjByb3ZlciUyMHNwb3J0fGVufDB8fDB8fHww",
    user: user
  }
])

puts "📅 Creating bookings..."

Booking.create!(
  user: user,
  car: Car.find_by(brand: "Ferrari", model: "488 Spider"),
  start_date: "2025-05-28",
  end_date: "2025-05-30"
)

Booking.create!(
  user: user,
  car: Car.find_by(brand: "Mercedes-Benz", model: "S-Class"),
  start_date: "2025-05-28",
  end_date: "2025-05-30"

)

Booking.create!(
  user: user,
  car: Car.find_by(brand: "Range Rover", model: "Sport"),
  start_date: "2025-05-28",
  end_date: "2025-05-30"
)

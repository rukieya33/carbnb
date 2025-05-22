
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
    description: "The Tesla Model S is a groundbreaking electric luxury sedan that blends high performance, cutting-edge technology, and sustainability. First introduced in 2012 and continuously refined since, the Model S remains a benchmark in the electric vehicle (EV) market. With its sleek, aerodynamic design and minimalist interior, it offers a premium driving experience that competes with the finest combustion-engine sedans.

    Under the hood—figuratively speaking—the Model S features a dual- or tri-motor all-wheel-drive system, delivering jaw-dropping acceleration. The Plaid variant can accelerate from 0 to 60 mph in under two seconds, making it one of the fastest production cars in the world. It also boasts an impressive electric range of up to 400 miles, depending on the variant and driving conditions, reducing range anxiety for long-distance travel.

    Inside, the Model S features a spacious cabin with premium materials and a futuristic 17-inch touchscreen interface that controls nearly every aspect of the vehicle. Tesla's Autopilot and Full Self-Driving (FSD) capabilities provide advanced driver assistance, though active supervision is still required.

    With constant over-the-air updates, the Model S continues to improve even after purchase, adding new features and enhancing performance. Combining speed, efficiency, and cutting-edge tech, the Tesla Model S stands as a symbol of the EV revolution and a compelling choice for drivers seeking innovation without compromise.",
    features: "Autopilot, Sunroof, Bluetooth",

    start_date: "2025-06-01",
    end_date: "2025-06-10",
    photo_url: "https://images.unsplash.com/photo-1652509407751-be84db9a7bca?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGNhciUyMHRlc2xhJTIwTW9kZWwlMjBTfGVufDB8fDB8fHww",
    user: user

    photo: "https://images.unsplash.com/photo-1652509407751-be84db9a7bca?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGNhciUyMHRlc2xhJTIwTW9kZWwlMjBTfGVufDB8fDB8fHww",
    user: user,
    transmission: "Automatic",
    model_year: 2024,
    fuel: "Electric",
    seat_capacity: 5

  },
  {
    brand: "Toyota",
    model: "Corolla",
    rental_options: "Daily",
    rent_price: 40.0,
    description: "Toyota has long been recognized as a global leader in automotive innovation, offering vehicles that are synonymous with reliability, durability, and fuel efficiency. Known for crafting cars that balance performance with practicality, Toyota continues to set the benchmark for quality engineering and long-term value.

    A Toyota car is an ideal choice for those who prioritize dependability and low ownership costs without sacrificing comfort or style. Whether you're navigating busy city streets, embarking on long road trips, or simply commuting daily, Toyota’s finely tuned engines and intuitive driving dynamics provide a smooth, responsive experience. Many models come equipped with Toyota’s advanced safety features,
    including Toyota Safety Sense™—a suite of driver-assistance technologies designed to protect you and your passengers.",
    features: "Air Conditioning, USB Charger, Cruise Control",

    start_date: "2025-06-05",
    end_date: "2025-06-12",
    photo_url: "https://images.unsplash.com/photo-1619682817481-e994891cd1f5?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDZ8fGNhciUyMHRveW90YSUyMGNvcm9sbGF8ZW58MHx8MHx8fDA%3D",
    user: user

    photo: "https://images.unsplash.com/photo-1619682817481-e994891cd1f5?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDZ8fGNhciUyMHRveW90YSUyMGNvcm9sbGF8ZW58MHx8MHx8fDA%3D",
    user: user,
    transmission: "Automatic",
    model_year: 2024,
    fuel: "Petrol",
    seat_capacity: 5

  },
  {
    brand: "BMW",
    model: "X5",
    rental_options: "BMW, short for Bayerische Motoren Werke, is a name synonymous with luxury, precision engineering, and dynamic driving experiences. Renowned for crafting vehicles that seamlessly blend performance with sophistication, BMW has carved a legacy as a top-tier German automotive brand. Each BMW model is a fine balance of innovation and tradition, offering drivers not just transportation, but an elevated journey.

    From its signature kidney grille to its aerodynamic contours and refined interiors, every BMW is designed with both aesthetics and function in mind. The powerful engines—whether turbocharged petrol, diesel, hybrid, or fully electric—deliver thrilling acceleration and responsive handling that make every drive a joy. BMW’s advanced technology features, such as iDrive infotainment, intuitive driver assistance systems, and customizable digital displays, ensure a connected and safe driving experience.",
    rent_price: 110.0,
    description: "Spacious luxury SUV with great performance and comfort.",
    features: "Leather Seats, Navigation, All-Wheel Drive",

    start_date: "2025-06-15",
    end_date: "2025-06-25",
    photo_url: "https://images.unsplash.com/photo-1674996047492-6b5cdc2dcf0a?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDB8fGNhciUyMEJNVyUyMFg1fGVufDB8fDB8fHww",
    user: user

    photo: "https://images.unsplash.com/photo-1674996047492-6b5cdc2dcf0a?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDB8fGNhciUyMEJNVyUyMFg1fGVufDB8fDB8fHww",
    user: user,
    transmission: "Automatic",
    model_year: 2025,
    fuel: "Petrol",
    seat_capacity: 5

  },
  {
    brand: "Ford",
    model: "Mustang",
    rental_options: "Daily, Weekend",
    rent_price: 200.0,
    description: "Ford is a globally recognized automotive brand known for producing vehicles that combine performance, reliability, and innovative technology. A Ford car typically delivers a well-rounded driving experience, whether you're navigating busy city streets, cruising on highways, or exploring off-road terrain. With a legacy that spans over a century, Ford has continually evolved to meet the needs of modern drivers by blending traditional craftsmanship with advanced engineering.

    Inside a Ford vehicle, comfort meets functionality. The interiors are thoughtfully designed, offering intuitive controls, spacious seating, and high-quality materials. Many models come equipped with the latest infotainment systems, including SYNC technology for seamless smartphone integration, voice commands, and real-time navigation. Safety is also a top priority, with features such as lane-keeping assist, adaptive cruise control, and automated emergency braking standard or available across most models.",
    features: "V8 Engine, Sport Mode, Convertible",

    start_date: "2025-06-10",
    end_date: "2025-06-14",
    photo_url: "https://images.unsplash.com/photo-1584345604476-8ec5e12e42dd?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTEyfHxjYXIlMjBmb3JkJTIwbXVzdGFuZyUyMHJlZHxlbnwwfHwwfHx8MA%3D%3D",
    user: user

    photo: "https://images.unsplash.com/photo-1584345604476-8ec5e12e42dd?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTEyfHxjYXIlMjBmb3JkJTIwbXVzdGFuZyUyMHJlZHxlbnwwfHwwfHx8MA%3D%3D",
    user: user,
    transmission: "Automatic",
    model_year: 2024,
    fuel: "Petrol",
    seat_capacity: 5

  },
  {
    brand: "Honda",
    model: "Civic",
    rental_options: "Daily, Weekly",
    rent_price: 85.0,
    description: "Honda has long been synonymous with reliability, efficiency, and smart engineering, and its latest offerings continue to raise the bar. Whether you’re looking at a compact Civic, the versatile CR-V, or the refined Accord, Honda vehicles strike a perfect balance between practicality and performance.

    One of the standout features of a Honda is its fuel efficiency. With advanced engine technologies like the Earth Dreams system and hybrid options, Honda delivers excellent mileage without sacrificing driving enjoyment. The smooth handling and responsive steering make every journey — whether a city commute or a long highway drive — feel confident and controlled.",
    features: "Bluetooth, Backup Camera, Lane Assist",

    start_date: "2025-06-01",
    end_date: "2025-06-08",
    photo_url: "https://images.unsplash.com/photo-1686074449582-6374eaebacf3?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzZ8fGNhciUyMGhvbmRhJTIwY2l2aWN8ZW58MHx8MHx8fDA%3D",
    user: user

    photo: "https://images.unsplash.com/photo-1686074449582-6374eaebacf3?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzZ8fGNhciUyMGhvbmRhJTIwY2l2aWN8ZW58MHx8MHx8fDA%3D",
    user: user,
    transmission: "Automatic",
    model_year: 2024,
    fuel: "Diesel",
    seat_capacity: 5

  },
  {
    brand: "Chevrolet",
    model: "Tahoe",
    rental_options: "Weekly, Monthly",
    rent_price: 90.0,
    description: "The Chevrolet brand, a cornerstone of American automotive innovation, offers a diverse range of vehicles known for their performance, reliability, and modern design. Whether you're looking for a rugged truck, a spacious SUV, or a sleek sedan, Chevrolet has a model tailored to meet your needs. Its vehicles are engineered with a strong emphasis on safety, comfort, and advanced technology, making them ideal for both everyday commutes and long-distance travel.

    One of the standout features of Chevrolet cars is their balance of power and efficiency. With options like fuel-efficient turbocharged engines, electric models such as the Chevrolet Bolt EV, and high-performance variants like the Camaro or Corvette, Chevrolet caters to a wide spectrum of drivers. Interiors are thoughtfully designed with user-friendly infotainment systems, quality materials, and ample space, ensuring a comfortable ride for all passengers.",
    features: "Third Row Seating, Rear Entertainment, Tow Package",

    start_date: "2025-06-20",
    end_date: "2025-07-01",
    photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7giDUWLmQnzmInwMohiKgajA-I5pGtI8ZOA&s",
    user: user

    photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7giDUWLmQnzmInwMohiKgajA-I5pGtI8ZOA&s",
    user: user,
    transmission: "Automatic",
    model_year: 2024,
    fuel: "Diesel",
    seat_capacity: 5

  },
  {
    brand: "Ferrari", model: "488 Spider", rent_price: 300.0,
    rental_options: "Daily", description: "Ferrari is an iconic Italian luxury sports car manufacturer renowned worldwide for its high-performance vehicles, exceptional design, and racing heritage. Founded by Enzo Ferrari in 1939, the brand quickly established itself as a symbol of speed, power, and exclusivity. Ferrari cars are celebrated for their sleek, aerodynamic shapes and cutting-edge technology, blending art and engineering into one thrilling driving experience.

    At the heart of every Ferrari is a finely tuned engine, often a V8 or V12, delivering incredible horsepower and acceleration that thrills driving enthusiasts. The company’s commitment to innovation is evident in its use of advanced materials like carbon fiber, sophisticated electronics, and precision engineering to optimize performance and handling. Whether on the racetrack or the open road, Ferrari vehicles offer unparalleled responsiveness and agility.",
    features: "Launch Control, Paddle Shift, V8 Twin Turbo",

    start_date: "2025-06-01", end_date: "2025-06-05",
    photo_url: "https://images.unsplash.com/photo-1618631144258-e7ba302a8afe?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTZ8fGNhciUyMGZlcnJhcml8ZW58MHx8MHx8fDA%3D",
    user: user

    photo: "https://images.unsplash.com/photo-1618631144258-e7ba302a8afe?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTZ8fGNhciUyMGZlcnJhcml8ZW58MHx8MHx8fDA%3D",
    user: user,
    transmission: "Manual",
    model_year: 2024,
    fuel: "Petrol",
    seat_capacity: 2

  },
  {
    brand: "Mercedes-Benz", model: "S-Class", rent_price: 180.0,
    rental_options: "Daily, Weekly", description: "Mercedes-Benz is a renowned German automotive brand synonymous with luxury, innovation, and performance. Established over a century ago, the brand has become a symbol of engineering excellence and timeless design. Mercedes-Benz vehicles are celebrated for their sophisticated blend of cutting-edge technology, comfort, and safety features, appealing to drivers who seek both prestige and reliability.

    The lineup ranges from elegant sedans like the C-Class and E-Class, to powerful SUVs such as the GLE and GLS, to high-performance models under the AMG badge. Each Mercedes-Benz car boasts meticulously crafted interiors with premium materials, intuitive infotainment systems, and advanced driver assistance technologies, ensuring a superior driving experience.",
    features: "Ambient Lighting, Air Suspension",

    start_date: "2025-06-10", end_date: "2025-06-15",
    photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9nfe314_US9m4A5k_nObFUyXjIClTf0bKRw&s",
    user: user

    photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9nfe314_US9m4A5k_nObFUyXjIClTf0bKRw&s",
    user: user,
    transmission: "Automatic",
    model_year: 2024,
    fuel: "Petrol",
    seat_capacity: 5

  },
  {
    brand: "Range Rover", model: "Sport", rent_price: 220.0,
    rental_options: "Weekend", description: "The Range Rover is an iconic luxury SUV that seamlessly blends sophistication, power, and advanced technology. Renowned for its distinctive design, the Range Rover features a bold and elegant exterior with a sleek silhouette, signature floating roof, and striking LED headlights that command attention on any road. Inside, the cabin offers an opulent experience with premium materials such as leather upholstery, wood trim, and state-of-the-art infotainment systems, ensuring both driver and passengers enjoy supreme comfort and convenience.

    Under the hood, the Range Rover is powered by a range of robust engines, including efficient turbocharged gasoline and diesel options, as well as electrified variants, delivering impressive performance on- and off-road. Its advanced Terrain Response system allows the vehicle to adapt effortlessly to various driving conditions — from city streets to rugged terrains — maintaining optimal traction and control.",
    features: "Panoramic Roof, AWD",

    start_date: "2025-06-12", end_date: "2025-06-20",
    photo_url: "https://images.unsplash.com/photo-1679506640602-0144b3bb5053?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8Y2FyJTIwcmFuZ2UlMjByb3ZlciUyMHNwb3J0fGVufDB8fDB8fHww",
    user: user

    photo: "https://images.unsplash.com/photo-1679506640602-0144b3bb5053?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8Y2FyJTIwcmFuZ2UlMjByb3ZlciUyMHNwb3J0fGVufDB8fDB8fHww",
    user: user,
    transmission: "Automatic",
    model_year: 2024,
    fuel: "Petrol",
    seat_capacity: 7

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

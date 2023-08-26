# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

images = [
  'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pexels.com%2Fsearch%2Fhotel%2520room%2F&psig=AOvVaw24AD5TYG0rhZpv00a_Kq0Y&ust=1692873639596000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCPiaoPHL8oADFQAAAAAdAAAAABAE',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJbx9PnrCc3RbqfuC-lYhkZFejjYhHY2kYHNKR6N2eKdjhmtdPvuaioaZ4FqWzoO1MKvo&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSygVIbtOKRnyBI5Lt32a2tZGABhgyX9gNGabDlKDYeu0zY5Gi6T94mL4tQeLFYLn56r0&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-Mbsqcjfa8K1Ueejn7pVClaP_UUMvhamOk3nS2HR3bRWFaUMPbptfp2TtcDg5bgQRiZA&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4sWqJOIJYvb5TnXiwCeQkIAcOFDboA8jMjXFRpZCb8OQNzP8E6d4fN6hS2xpYY3i_1LU&usqp=CAU',
  'https://images.unsplash.com/photo-1611892440504-42a792e24d32?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aG90ZWwlMjByb29tfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1596394516093-501ba68a0ba6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8aG90ZWwlMjByb29tfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1590490360182-c33d57733427?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGhvdGVsJTIwcm9vbXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1566665797739-1674de7a421a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fGhvdGVsJTIwcm9vbXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'
]

# Create cities
sample_cities = [
  "Tokyo",
  "Mexico City",
  "New York City",
  "Mumbai",
  "Seoul",
  "Kigali",
  "Lagos",
  "Buenos Aires",
  "Cairo",
  "London",
  "Osaka",
  "Cairo",
  "Mexico City",
  "São Paulo",
  "Delhi",
  "Addis Ababa",
  "Los Angeles",
  "Paris",
  "Istanbul",
  "Madrid"
]
cities = []
20.times do |i|
  cities << City.create(name: sample_cities[i])
end

# Create users
users = []
20.times do |i|
  users << User.create(username: "User #{i + 1}")
end

# Create rooms
room_types = [
  {
    "name": "Single Room",
    "description": "A single room with a bed for one person."
  },
  {
    "name": "Double Room",
    "description": "A room with two beds for two people."
  },
  {
    "name": "Twin Room",
    "description": "A room with two beds that can be separated."
  },
  {
    "name": "Queen Room",
    "description": "A room with a queen-sized bed."
  },
  {
    "name": "King Room",
    "description": "A room with a king-sized bed."
  },
  {
    "name": "Suite",
    "description": "A large room with a separate sitting area."
  },
  {
    "name": "Deluxe Room",
    "description": "A room with upgraded amenities."
  },
  {
    "name": "Penthouse Suite",
    "description": "The most luxurious room in the hotel."
  },
  {
    "name": "Family Room",
    "description": "A room that can accommodate a family."
  },
  {
    "name": "Accessible Room",
    "description": "A room that is accessible to people with disabilities."
  },
  {
    "name": "Non-Smoking Room",
    "description": "A room where smoking is not allowed."
  },
  {
    "name": "Pet-Friendly Room",
    "description": "A room where pets are allowed."
  },
  {
    "name": "Rooftop Room",
    "description": "A room with a view of the roof."
  },
  {
    "name": "Executive Room",
    "description": "A room with upgraded amenities and access to the executive lounge."
  },
  {
    "name": "Junior Suite",
    "description": "A room with a separate sitting area and a larger bed."
  },
  {
    "name": "Duplex Suite",
    "description": "A two-story suite with a separate living area and bedroom."
  },
  {
    "name": "Casino Suite",
    "description": "A suite with a view of the casino."
  },
  {
    "name": "Spa Suite",
    "description": "A suite with access to the hotel's spa."
  },
  {
    "name": "Golf Course View Room",
    "description": "A room with a view of the golf course."
  },
  {
    "name": "Oceanfront Room",
    "description": "A room with a view of the ocean."
  },
  {
    "name": "City View Room",
    "description": "A room with a view of the city."
  }
]
rooms = []
20.times do |i|
  rooms << Room.create(
    name: room_types[i][:name],
    user: users.sample,
    image: images.sample,
    active: true,
    price: rand(50..300),
    description: room_types[i][:description]
  )
end

# Create reservations
20.times do |i|
  Reservation.create(
    user: users.sample,
    room: rooms.sample,
    city: cities.sample,
    date: Date.today + rand(1..30).days
  )
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create cities
cities = []
20.times do |i|
  cities << City.create(name: "City #{i + 1}")
end

# Create users
users = []
20.times do |i|
  users << User.create(username: "User #{i + 1}")
end

# Create rooms
rooms = []
20.times do |i|
  rooms << Room.create(
    name: "Room #{i + 1}",
    user: users.sample,
    price: rand(50..300),
    description: "Description for Room #{i + 1}"
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

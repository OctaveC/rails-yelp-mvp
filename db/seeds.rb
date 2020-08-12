# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: '0652370812', category: 'belgian' }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: '0652370814', category: 'italian' }
funkytown = { name: "Funkytown", address: "Kansas", phone_number: '0652450814', category: 'french' }
fuck_all = { name: "Fuck all", address: "Nowhere", phone_number: 'none', category: 'japanese' }
trident = { name: "Trident", address: "Pacific Ocean", phone_number: '0690370814', category: 'chinese' }

[dishoom, pizza_east, funkytown, fuck_all, trident].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

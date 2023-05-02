# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "french" }
pizza_east = {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian" }
super_pizza = {name: "Super Pizza", address: "69 made up Lane, London, E2 C87", category: "italian" }
silk_road = {name: "Silk Road", address: "7 Camberwell Lane, London SE4 S21", category: "chinese" }
ramen_man =  {name: "Ramen Man", address: "76A  High St, London E9 6PQ", category: "japanese" }
waffle_house = {name: "Waffle House", address: "100  Low St, London N2 6PQ", category: "belgian" }

[dishoom, pizza_east, super_pizza, silk_road, ramen_man, waffle_house].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "fin!"

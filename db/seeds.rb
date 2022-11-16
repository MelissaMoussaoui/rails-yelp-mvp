# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all
# Review.destroy_all

puts "Creating restaurants..."
mcdo = {name: "mcdo", address: "16 rue Paradis", phone_number: "0606060606", category: "french"}
bk = {name: "burger king", address: "16 rue Picasso", phone_number: "0707070707", category: "belgian"}
kfc = {name: "kfc", address: "16 rue Picolo", phone_number: "0605040302", category: "italian"}
sushi = {name: "sushi shop", address: "16 rue Poiscaille", phone_number: "0607080909", category: "japanese"}
nui = {name: "nui", address: "16 rue Pimento", phone_number: "0604030806", category: "chinese"}

restaurant_seed = [mcdo, bk, kfc, sushi, nui]

# puts "Generating reviews..."
# toto = {rating: 5, content: "sooooo good"}
# tata = {rating: 4, content: "very nice!"}
# tutu = {rating: 3, content: "nice but not woah"}
# titi = {rating: 0, content: "horrible!"}
# momo = {rating: 2, content: "not good at all but nice view"}
# mama = {rating: 1, content: "one star for the place"}
# mimi = {rating: 4, content: "excellent!"}
# mymy = {rating: 5, content: "very excellent!"}

#reviews_seed = [toto, tata, tutu, titi, momo, mama, mimi, mymy]

restaurant_seed.each do |attributes|
    restaurant = Restaurant.create!(attributes)
    puts "Created #{restaurant.name}"
end
puts "finished!"
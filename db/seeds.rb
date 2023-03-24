# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# Flat.create!(
#   name: 'Garden Flat London',
#   address: '10 Clifton Gardens London W9 1DT',
#   description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
#   rooms: 3,
#   country: "United Kingdom",
#   city: "London",
#   price_per_night: 75,
#   number_of_guests: 3,
#   user_id: 1
# )

require 'faker'

@first_user = User.create!(first_name: "Doug", last_name: "Barr", email: "doug@gmail.com", password: '123456')

puts "deleting Users & Flats...."
User.delete_all
Flat.delete_all
puts "seeding users and flats"

10.times do
  @user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: '123456')
  @user.save
  flat = Flat.create!(name: Faker::Superhero.name, price_per_night: rand(2...100), user: @user, address: "London", description: "Lovely large apartment", city: "London", rooms: rand(2...9), number_of_guests: rand(2...12,) )
  flat.save
end

puts "Database seeded..."


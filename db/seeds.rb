# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts "Cleaning the database..."
Flat.destroy_all

garden_flat = { name: 'Light & Spacious Garden Flat London', address: '10 Clifton Gardens London W9 1DT', description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory', price_per_night: 75, number_of_guests: 3, picture_url: 'https://images.unsplash.com/photo-1554995207-c18c203602cb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGludGVyaW9yfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60' }  
clapham_flat = { name: 'Light & Spacious Garden Flat London', address: '10 Clifton Gardens London W9 1DT', description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory', price_per_night: 200, number_of_guests: 5, picture_url: 'https://images.unsplash.com/photo-1600210492493-0946911123ea?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8aW50ZXJpb3J8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60' }  
huge_house = { name: 'Light & Spacious Garden Flat London', address: '10 Clifton Gardens London W9 1DT', description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory', price_per_night: 68, number_of_guests: 1, picture_url: 'https://images.unsplash.com/photo-1585128792020-803d29415281?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8aW50ZXJpb3J8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'}  
studio_pad = { name: 'Light & Spacious Garden Flat London', address: '10 Clifton Gardens London W9 1DT', description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory', price_per_night: 101, number_of_guests: 5, picture_url: 'https://images.unsplash.com/photo-1564078516393-cf04bd966897?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8aW50ZXJpb3J8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60' }  
penthouse = { name: 'Sleek penthouse in Chelsea', address: '100 Kings Road London SW! 1DT', description: 'Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory', price_per_night: 300, number_of_guests: 8, picture_url: 'https://images.unsplash.com/photo-1606744837616-56c9a5c6a6eb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGludGVyaW9yfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60' }  

[garden_flat, clapham_flat, huge_house, studio_pad, penthouse].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end

puts "Finished seeding the database..."
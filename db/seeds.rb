# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
china = { name: 'ChinaOutOfTheBox', address: 'Tijuca', category: 'chinese'}
paparazzo = { name: 'Pizza Italia', address: 'Humaitá', category: 'italian'}
japa = { name: 'Yaki Village', address: 'Flamengo', phone_number: '21 9 9865-4748', category: 'japanese'}
canario_belga = { name: 'Belgian', address: 'Grajaú', category: 'belgian'}
bonjour = { name: 'La nuit', address: 'Joá', phone_number: '21 9 8806-9798', category: 'french'}

[china, paparazzo, japa, canario_belga, bonjour].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'

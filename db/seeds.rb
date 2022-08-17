# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Restaurant.create(name: 'ChinaOutOfTheBox', address: 'Tijuca', category: 'chinese')

Restaurant.create(name: 'Pizza Italia', address: 'Humaitá', category: 'italian')

Restaurant.create(name: 'Yaki Village', address: 'Flamengo', phone_number: '21 9 9865-4748', category: 'japanese')

Restaurant.create(name: 'Belgian', address: 'Grajaú', category: 'belgian')

Restaurant.create(name: 'La nuit', address: 'Joá', phone_number: '21 9 8806-9798', category: 'french')

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', phone_number: '12132123', category: 'french' }
Restaurant.create(dishoom)

godfather = { name: 'godfather', address: '12 italian St', phone_number: '5552123', category: 'italian' }
Restaurant.create(godfather)

dragons = { name: 'dragons', address: 'pekin st. 3241', phone_number: '67830212', category: 'chinese' }
Restaurant.create(dragons)

reddot = { name: 'reddot', address: 'boolevar St,  E2 23E', phone_number: '300004545', category: 'japanese' }
Restaurant.create(reddot)

typical = { name: 'typical', address: '8 Boundary St, London E5 7', phone_number: '49987852', category: 'belgian' }
Restaurant.create(typical)

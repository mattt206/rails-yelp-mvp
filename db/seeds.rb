# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all
categories = %w[chinese italian japanese french belgian]

# dishoom = { name: 'dishoom', address: '7 Boundary St, London E2 7JE', phone_number: '12132123', category: categories.sample }
# Restaurant.create(dishoom)

# godfather = { name: 'godfather', address: '12 italian St', phone_number: '5552123', category: categories.sample }
# Restaurant.create(godfather)

# dragons = { name: 'dragons', address: 'pekin st. 3241', phone_number: '67830212', category: categories.sample }
# Restaurant.create(dragons)

# reddot = { name: 'reddot', address: 'boolevar St,  E2 23E', phone_number: '300004545', category: categories.sample }
# Restaurant.create(reddot)

# typical = { name: 'typical', address: '8 Boundary St, London E5 7', phone_number: '49987852', category: categories.sample }
# Restaurant.create(typical)

5.times do
  rest = Restaurant.new(name: Faker::Beer.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: categories.sample
  )
  rest.save
end
puts "finished!"

# 5.times do
#   faker_data = Restaurant.new(name: Faker::Beer.name, address: "#{Faker::Address.street_address}", category: categories.sample)
#   faker_data.save!
# end

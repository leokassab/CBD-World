# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


25.times do
  flower = Flower.create(name: Faker::Cannabis.strain, price: Faker::Commerce.price(range: 10.0..20.0), country: Faker::Address.country, category: Faker::Cannabis.type, description: Faker::Lorem.paragraph(sentence_count: 6), cbd_ratio: Faker::Number.within(range: 3.0..10.0), effect: Faker::Cannabis.medical_use, flavor: Faker::Dessert.flavor, weight: Faker::Measurement.metric_weight(amount: 1), user_id: Faker::Number.between(from: 1, to: 10))
  puts "created #{flower.name}"
end

25.times do
  flower = Flower.create(name: Faker::Cannabis.strain, price: Faker::Commerce.price(range: 30.0..50.0), country: Faker::Address.country, category: Faker::Cannabis.type, description: Faker::Lorem.paragraph(sentence_count: 6), cbd_ratio: Faker::Number.within(range: 3.0..10.0), effect: Faker::Cannabis.medical_use, flavor: Faker::Dessert.flavor, weight: Faker::Measurement.metric_weight(amount: 3), user_id: Faker::Number.between(from: 1, to: 10))
  puts "created #{flower.name}"
end

25.times do
  flower = Flower.create(name: Faker::Cannabis.strain, price: Faker::Commerce.price(range: 50.0..100.0), country: Faker::Address.country, category: Faker::Cannabis.type, description: Faker::Lorem.paragraph(sentence_count: 6), cbd_ratio: Faker::Number.within(range: 3.0..10.0), effect: Faker::Cannabis.medical_use, flavor: Faker::Dessert.flavor, weight: Faker::Measurement.metric_weight(amount: 5), user_id: Faker::Number.between(from: 1, to: 10))
  puts "created #{flower.name}"
end

15.times do
  flower = Flower.create(name: Faker::Cannabis.strain, price: Faker::Commerce.price(range: 100.0..200.0), country: Faker::Address.country, category: Faker::Cannabis.type, description: Faker::Lorem.paragraph(sentence_count: 6), cbd_ratio: Faker::Number.within(range: 3.0..10.0), effect: Faker::Cannabis.medical_use, flavor: Faker::Dessert.flavor, weight: Faker::Measurement.metric_weight(amount: 10), user_id: Faker::Number.between(from: 1, to: 10))
  puts "created #{flower.name}"
end

puts "Cleaning database..."
User.destroy_all

puts "Creating users ..."
20.times do
    user = User.create!(
    email: Faker::Internet.email,
    password: 123456,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    phone_number: rand(600000000..699999999),
    adress: Faker::Address.street_address,
    zip_code: Faker::Address.zip_code,
    city: Faker::Address.city,
    country: Faker::Address.country,
    merchant: true,
    vat_number: rand(0..100),
    kbis: rand(0..200),
    siret: rand(0..1000),
    compagny_name: Faker::Company.name
  )
    puts "Created #{user.last_name}"
end
20.times do
    user = User.create!(
    email: Faker::Internet.email,
    password: 123456,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    phone_number: rand(600000000..699999999),
    adress: Faker::Address.street_address,
    zip_code: Faker::Address.zip_code,
    city: Faker::Address.city,
    country: Faker::Address.country,
    merchant: false,
  )
    puts "Created #{user.last_name}"
end


puts "Finished!"


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first
require  'faker'

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

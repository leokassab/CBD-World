# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Flower.destroy_all

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

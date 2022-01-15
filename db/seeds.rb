# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Cleaning database..."
User.destroy_all
Flower.destroy_all

# ADD 2 seller
puts "Start creating DB"

puts "--------------------------------------------------------------------------"
puts "create Théo"
theo = User.create(
  email: "theo@cbdfire.com",
  password: "azertyuiop",
  first_name: "Théo",
  last_name: "Denis",
  phone_number: "0612345678",
  adress: "1 rue du dragon",
  zip_code: "75018",
  city: "Paris",
  country: "France",
  merchant: true,
  vat_number: "134",
  kbis: "234",
  siret: "1345",
  compagny_name: "CBD FIRE"
)
puts "Finished!"

puts "--------------------------------------------------------------------------"
puts "create Elliott"
elliott = User.create(
  email: "elliott@pastrycbd.com",
  password: "azertyuiop",
  first_name: "Elliott",
  last_name: "Gabison",
  phone_number: "0873456758",
  adress: "5 rue du dragon",
  zip_code: "75018",
  city: "Paris",
  country: "France",
  merchant: true,
  vat_number: "164",
  kbis: "555",
  siret: "1555",
  compagny_name: "PASTRY CBD"
)
puts "Finished!"

# ADD 2 buyer
puts "--------------------------------------------------------------------------"
puts "create Léo"
leo = User.create(
  email: "leo@kassabi.com",
  password: "azertyuiop",
  first_name: "Léo",
  last_name: "Kassabi",
  phone_number: "0622345678",
  adress: "7 rue du dragon",
  zip_code: "75018",
  city: "Paris",
  country: "France",
  merchant: false,
)
puts "Finished!"

puts "--------------------------------------------------------------------------"
puts "create Christelle"
christelle = User.create(
  email: "christelle@lecamp.com",
  password: "azertyuiop",
  first_name: "Christelle",
  last_name: "Lecamp",
  phone_number: "0632345678",
  adress: "55 rue du dragon",
  zip_code: "75018",
  city: "Paris",
  country: "France",
  merchant: false,
)
puts "Finished!"
puts "--------------------------------------------------------------------------"

MERCHANTS = []
BUYERS = []

User.all.each do |user|
  if user.merchant == true
    MERCHANTS << user
    puts "created #{user.id} merchant"
  else
    BUYERS << user
    puts "created #{user.id} buyer"
  end
end

puts "--------------------------------------------------------------------------"

MERCHANT_USER = MERCHANTS.sample
BUYER_USER = BUYERS.sample


dragon_arm = Flower.create(
  name: "Dragon Arm",
  price: Faker::Commerce.price(range: 10.0..20.0),
  country: Faker::Address.country,
  category: Faker::Cannabis.type,
  description: Faker::Lorem.paragraph(sentence_count: 6),
  cbd_ratio: Faker::Number.within(range: 3.0..10.0),
  effect: Faker::Cannabis.medical_use,
  flavor: Faker::Dessert.flavor,
  weight: Faker::Measurement.metric_weight(amount: 1),
  user: MERCHANT_USER
)
dragon_fly = Flower.create(
  name: "Dragon Fly",
  price: Faker::Commerce.price(range: 10.0..20.0),
  country: Faker::Address.country,
  category: Faker::Cannabis.type,
  description: Faker::Lorem.paragraph(sentence_count: 6),
  cbd_ratio: Faker::Number.within(range: 3.0..10.0),
  effect: Faker::Cannabis.medical_use,
  flavor: Faker::Dessert.flavor,
  weight: Faker::Measurement.metric_weight(amount: 1),
  user: MERCHANT_USER
)
white_widow = Flower.create(
  name: "White Widow",
  price: Faker::Commerce.price(range: 10.0..20.0),
  country: Faker::Address.country,
  category: Faker::Cannabis.type,
  description: Faker::Lorem.paragraph(sentence_count: 6),
  cbd_ratio: Faker::Number.within(range: 3.0..10.0),
  effect: Faker::Cannabis.medical_use,
  flavor: Faker::Dessert.flavor,
  weight: Faker::Measurement.metric_weight(amount: 1),
  user: MERCHANT_USER
)
dragon_kush = Flower.create(
  name: "Dragon Kush",
  price: Faker::Commerce.price(range: 10.0..20.0),
  country: Faker::Address.country,
  category: Faker::Cannabis.type,
  description: Faker::Lorem.paragraph(sentence_count: 6),
  cbd_ratio: Faker::Number.within(range: 3.0..10.0),
  effect: Faker::Cannabis.medical_use,
  flavor: Faker::Dessert.flavor,
  weight: Faker::Measurement.metric_weight(amount: 1),
  user: MERCHANT_USER
)
amnesia = Flower.create(
  name: "Amnésia",
  price: Faker::Commerce.price(range: 30.0..60.0),
  country: Faker::Address.country,
  category: Faker::Cannabis.type,
  description: Faker::Lorem.paragraph(sentence_count: 6),
  cbd_ratio: Faker::Number.within(range: 3.0..10.0),
  effect: Faker::Cannabis.medical_use,
  flavor: Faker::Dessert.flavor,
  weight: Faker::Measurement.metric_weight(amount: 3),
  user: MERCHANT_USER
)
gorilla_glue = Flower.create(
  name: "Gorilla Glue",
  price: Faker::Commerce.price(range: 10.0..20.0),
  country: Faker::Address.country,
  category: Faker::Cannabis.type,
  description: Faker::Lorem.paragraph(sentence_count: 6),
  cbd_ratio: Faker::Number.within(range: 3.0..10.0),
  effect: Faker::Cannabis.medical_use,
  flavor: Faker::Dessert.flavor,
  weight: Faker::Measurement.metric_weight(amount: 1),
  user: MERCHANT_USER
)
heavy_og = Flower.create(
  name: "Heavy OG",
  price: Faker::Commerce.price(range: 10.0..20.0),
  country: Faker::Address.country,
  category: Faker::Cannabis.type,
  description: Faker::Lorem.paragraph(sentence_count: 6),
  cbd_ratio: Faker::Number.within(range: 3.0..10.0),
  effect: Faker::Cannabis.medical_use,
  flavor: Faker::Dessert.flavor,
  weight: Faker::Measurement.metric_weight(amount: 1),
  user: MERCHANT_USER
)
cookie_dough = Flower.create(
  name: "Cookie dough",
  price: Faker::Commerce.price(range: 100.0..200.0),
  country: Faker::Address.country,
  category: Faker::Cannabis.type,
  description: Faker::Lorem.paragraph(sentence_count: 6),
  cbd_ratio: Faker::Number.within(range: 3.0..10.0),
  effect: Faker::Cannabis.medical_use,
  flavor: Faker::Dessert.flavor,
  weight: Faker::Measurement.metric_weight(amount: 10),
  user: MERCHANT_USER
)
og_salad = Flower.create(
  name: "OG Salad",
  price: Faker::Commerce.price(range: 10.0..20.0),
  country: Faker::Address.country,
  category: Faker::Cannabis.type,
  description: Faker::Lorem.paragraph(sentence_count: 6),
  cbd_ratio: Faker::Number.within(range: 3.0..10.0),
  effect: Faker::Cannabis.medical_use,
  flavor: Faker::Dessert.flavor,
  weight: Faker::Measurement.metric_weight(amount: 1),
  user: MERCHANT_USER
)
kalifa_kush = Flower.create(
  name: "Kalifa Kush",
  price: Faker::Commerce.price(range: 10.0..20.0),
  country: Faker::Address.country,
  category: Faker::Cannabis.type,
  description: Faker::Lorem.paragraph(sentence_count: 6),
  cbd_ratio: Faker::Number.within(range: 3.0..10.0),
  effect: Faker::Cannabis.medical_use,
  flavor: Faker::Dessert.flavor,
  weight: Faker::Measurement.metric_weight(amount: 1),
  user: MERCHANT_USER
)
watermelon_kush = Flower.create(
  name: "Watermelon Kush",
  price: Faker::Commerce.price(range: 100.0..200.0),
  country: Faker::Address.country,
  category: Faker::Cannabis.type,
  description: Faker::Lorem.paragraph(sentence_count: 6),
  cbd_ratio: Faker::Number.within(range: 3.0..10.0),
  effect: Faker::Cannabis.medical_use,
  flavor: Faker::Dessert.flavor,
  weight: Faker::Measurement.metric_weight(amount: 10),
  user: MERCHANT_USER
)
critical_kush = Flower.create(
  name: "Critical Kush",
  price: Faker::Commerce.price(range: 10.0..20.0),
  country: Faker::Address.country,
  category: Faker::Cannabis.type,
  description: Faker::Lorem.paragraph(sentence_count: 6),
  cbd_ratio: Faker::Number.within(range: 3.0..10.0),
  effect: Faker::Cannabis.medical_use,
  flavor: Faker::Dessert.flavor,
  weight: Faker::Measurement.metric_weight(amount: 1),
  user: MERCHANT_USER
)
lemonade_kush = Flower.create(
  name: "Lemonade Kush",
  price: Faker::Commerce.price(range: 10.0..20.0),
  country: Faker::Address.country,
  category: Faker::Cannabis.type,
  description: Faker::Lorem.paragraph(sentence_count: 6),
  cbd_ratio: Faker::Number.within(range: 3.0..10.0),
  effect: Faker::Cannabis.medical_use,
  flavor: Faker::Dessert.flavor,
  weight: Faker::Measurement.metric_weight(amount: 1),
  user: MERCHANT_USER
)
mojito_kush = Flower.create(
  name: "Mojito Kush",
  price: Faker::Commerce.price(range: 10.0..20.0),
  country: Faker::Address.country,
  category: Faker::Cannabis.type,
  description: Faker::Lorem.paragraph(sentence_count: 6),
  cbd_ratio: Faker::Number.within(range: 3.0..10.0),
  effect: Faker::Cannabis.medical_use,
  flavor: Faker::Dessert.flavor,
  weight: Faker::Measurement.metric_weight(amount: 1),
  user: MERCHANT_USER
)
peach_kush = Flower.create(
  name: "Peach Kush",
  price: Faker::Commerce.price(range: 50.0..100.0),
  country: Faker::Address.country,
  category: Faker::Cannabis.type,
  description: Faker::Lorem.paragraph(sentence_count: 6),
  cbd_ratio: Faker::Number.within(range: 3.0..10.0),
  effect: Faker::Cannabis.medical_use,
  flavor: Faker::Dessert.flavor,
  weight: Faker::Measurement.metric_weight(amount: 5),
  user: MERCHANT_USER
)
og_clementine = Flower.create(
  name: "OG Clementine",
  price: Faker::Commerce.price(range: 50.0..100.0),
  country: Faker::Address.country,
  category: Faker::Cannabis.type,
  description: Faker::Lorem.paragraph(sentence_count: 6),
  cbd_ratio: Faker::Number.within(range: 3.0..10.0),
  effect: Faker::Cannabis.medical_use,
  flavor: Faker::Dessert.flavor,
  weight: Faker::Measurement.metric_weight(amount: 5),
  user: MERCHANT_USER
)
key_lime_pie = Flower.create(
  name: "Key Lime Pie",
  price: Faker::Commerce.price(range: 10.0..20.0),
  country: Faker::Address.country,
  category: Faker::Cannabis.type,
  description: Faker::Lorem.paragraph(sentence_count: 6),
  cbd_ratio: Faker::Number.within(range: 3.0..10.0),
  effect: Faker::Cannabis.medical_use,
  flavor: Faker::Dessert.flavor,
  weight: Faker::Measurement.metric_weight(amount: 1),
  user: MERCHANT_USER
)
lemon_meringue = Flower.create(
  name: "Lemon Meringue",
  price: Faker::Commerce.price(range: 10.0..20.0),
  country: Faker::Address.country,
  category: Faker::Cannabis.type,
  description: Faker::Lorem.paragraph(sentence_count: 6),
  cbd_ratio: Faker::Number.within(range: 3.0..10.0),
  effect: Faker::Cannabis.medical_use,
  flavor: Faker::Dessert.flavor,
  weight: Faker::Measurement.metric_weight(amount: 1),
  user: MERCHANT_USER
)
puts "created #{Flower.count} flowers"
puts "Finished!"

puts "--------------------------------------------------------------------------"
puts "creating review"
45.times do
  buyer_user = BUYERS.sample
  review = Review.create(
    grade: rand(4.0..5.0),
    comment: Faker::Lorem.paragraph(sentence_count: 2),
    user: buyer_user,
    flower_id: rand(1..6)
  )
end
puts "Finished!"

puts "--------------------------------------------------------------------------"
puts "creating order"
45.times do
  buyer_user = BUYERS.sample
  order = Order.create(
    paid: true,
    total_amount: rand(30..150),
    flower_id: rand(1..6),
    user: buyer_user
  )
end
puts "Finished!"

puts "--------------------------------------------------------------------------"
puts "DB COMPLETE"

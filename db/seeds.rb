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


dragon_arm = Flower.new(
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
dragon_arm_path = Rails.root.join('app', 'assets', 'images', 'dragon_arm.jpeg')
dragon_arm_photo = File.open(dragon_arm_path)
dragon_arm.photo.attach(io: dragon_arm_photo, filename: 'dragon_arm.jpeg', content_type: 'image/jpeg')
dragon_arm.save!

dragon_fly = Flower.new(
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
dragon_fly_path = Rails.root.join('app', 'assets', 'images', 'dragon_fly.jpeg')
dragon_fly_photo = File.open(dragon_fly_path)
dragon_fly.photo.attach(io: dragon_fly_photo, filename: 'dragon_fly.jpeg', content_type: 'image/jpeg')
dragon_fly.save!

white_widow = Flower.new(
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
white_widow_path = Rails.root.join('app', 'assets', 'images', 'white_widow.jpeg')
white_widow_photo = File.open(white_widow_path)
white_widow.photo.attach(io: white_widow_photo, filename: 'white_widow.jpeg', content_type: 'image/jpeg')
white_widow.save!

dragon_kush = Flower.new(
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
dragon_kush_path = Rails.root.join('app', 'assets', 'images', 'dragon_kush.jpeg')
dragon_kush_photo = File.open(dragon_kush_path)
dragon_kush.photo.attach(io: dragon_kush_photo, filename: 'dragon_kush.jpeg', content_type: 'image/jpeg')
dragon_kush.save!

amnesia = Flower.new(
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
amnesia_path = Rails.root.join('app', 'assets', 'images', 'amnesia.jpeg')
amnesia_photo = File.open(amnesia_path)
amnesia.photo.attach(io: amnesia_photo, filename: 'amnesia.jpeg', content_type: 'image/jpeg')
amnesia.save!

gorilla_glue = Flower.new(
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
gorilla_glue_path = Rails.root.join('app', 'assets', 'images', 'gorilla_glue.jpeg')
gorilla_glue_photo = File.open(gorilla_glue_path)
gorilla_glue.photo.attach(io: gorilla_glue_photo, filename: 'gorilla_glue.jpeg', content_type: 'image/jpeg')
gorilla_glue.save!

heavy_og = Flower.new(
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
heavy_og_path = Rails.root.join('app', 'assets', 'images', 'heavy_og.jpeg')
heavy_og_photo = File.open(heavy_og_path)
heavy_og.photo.attach(io: heavy_og_photo, filename: 'heavy_og.jpeg', content_type: 'image/jpeg')
heavy_og.save!

cookie_dough = Flower.new(
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
cookie_dough_path = Rails.root.join('app', 'assets', 'images', 'cookie_dough.jpeg')
cookie_dough_photo = File.open(cookie_dough_path)
cookie_dough.photo.attach(io: cookie_dough_photo, filename: 'cookie_dough.jpeg', content_type: 'image/jpeg')
cookie_dough.save!

og_salad = Flower.new(
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
og_salad_path = Rails.root.join('app', 'assets', 'images', 'og_salad.jpeg')
og_salad_photo = File.open(og_salad_path)
og_salad.photo.attach(io: og_salad_photo, filename: 'og_salad.jpeg', content_type: 'image/jpeg')
og_salad.save!

kalifa_kush = Flower.new(
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
kalifa_kush_path = Rails.root.join('app', 'assets', 'images', 'kalifa_kush.jpeg')
kalifa_kush_photo = File.open(kalifa_kush_path)
kalifa_kush.photo.attach(io: kalifa_kush_photo, filename: 'kalifa_kush.jpeg', content_type: 'image/jpeg')
kalifa_kush.save!

watermelon_kush = Flower.new(
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
watermelon_kush_path = Rails.root.join('app', 'assets', 'images', 'watermelon_kush.jpeg')
watermelon_kush_photo = File.open(watermelon_kush_path)
watermelon_kush.photo.attach(io: watermelon_kush_photo, filename: 'watermelon_kush.jpeg', content_type: 'image/jpeg')
watermelon_kush.save!

critical_kush = Flower.new(
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
critical_kush_path = Rails.root.join('app', 'assets', 'images', 'critical_kush.jpeg')
critical_kush_photo = File.open(critical_kush_path)
critical_kush.photo.attach(io: critical_kush_photo, filename: 'critical_kush.jpeg', content_type: 'image/jpeg')
critical_kush.save!

lemonade_kush = Flower.new(
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
lemonade_kush_path = Rails.root.join('app', 'assets', 'images', 'lemonade_kush.jpeg')
lemonade_kush_photo = File.open(lemonade_kush_path)
lemonade_kush.photo.attach(io: lemonade_kush_photo, filename: 'lemonade_kush.jpeg', content_type: 'image/jpeg')
lemonade_kush.save!

mojito_kush = Flower.new(
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
mojito_kush_path = Rails.root.join('app', 'assets', 'images', 'mojito_kush.jpeg')
mojito_kush_photo = File.open(mojito_kush_path)
mojito_kush.photo.attach(io: mojito_kush_photo, filename: 'mojito_kush.jpeg', content_type: 'image/jpeg')
mojito_kush.save!

peach_kush = Flower.new(
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
peach_kush_path = Rails.root.join('app', 'assets', 'images', 'peach_kush.jpeg')
peach_kush_photo = File.open(peach_kush_path)
peach_kush.photo.attach(io: peach_kush_photo, filename: 'peach_kush.jpeg', content_type: 'image/jpeg')
peach_kush.save!

og_clementine = Flower.new(
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
og_clementine_path = Rails.root.join('app', 'assets', 'images', 'og_clementine.jpeg')
og_clementine_photo = File.open(og_clementine_path)
og_clementine.photo.attach(io: og_clementine_photo, filename: 'og_clementine.jpeg', content_type: 'image/jpeg')
og_clementine.save!

key_lime_pie = Flower.new(
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
key_lime_pie_path = Rails.root.join('app', 'assets', 'images', 'key_lime_pie.jpeg')
key_lime_pie_photo = File.open(key_lime_pie_path)
key_lime_pie.photo.attach(io: key_lime_pie_photo, filename: 'key_lime_pie.jpeg', content_type: 'image/jpeg')
key_lime_pie.save!

lemon_meringue = Flower.new(
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
lemon_meringue_path = Rails.root.join('app', 'assets', 'images', 'lemon_meringue.jpeg')
lemon_meringue_photo = File.open(lemon_meringue_path)
lemon_meringue.photo.attach(io: lemon_meringue_photo, filename: 'lemon_meringue.jpeg', content_type: 'image/jpeg')
lemon_meringue.save!

ak_020 = Flower.new(
  name: "Ak 020",
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
ak_020_path = Rails.root.join('app', 'assets', 'images', 'ak_020.jpeg')
ak_020_photo = File.open(ak_020_path)
ak_020.photo.attach(io: ak_020_photo, filename: 'ak_020.jpeg', content_type: 'image/jpeg')
ak_020.save!

chunky_cookies = Flower.create(
  name: "Chunky Cookies",
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
chunky_cookies_path = Rails.root.join('app', 'assets', 'images', 'chunky_cookies.jpeg')
chunky_cookies_photo = File.open(chunky_cookies_path)
chunky_cookies.photo.attach(io: chunky_cookies_photo, filename: 'chunky_cookies.jpeg', content_type: 'image/jpeg')
chunky_cookies.save!

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

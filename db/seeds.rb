# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require "open-uri"

puts "Cleaning database..."
Review.destroy_all
Order.destroy_all
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
dragon_arm_path = "https://res.cloudinary.com/dqlftfvk3/image/upload/v1642839317/production/dragon_arm_k2wdso.jpg"
dragon_arm_photo = URI.open(dragon_arm_path)
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
dragon_fly_path = "https://res.cloudinary.com/dqlftfvk3/image/upload/v1642839317/production/dragon_fly_hjs9qn.jpg"
dragon_fly_photo = URI.open(dragon_fly_path)
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
white_widow_path = "https://res.cloudinary.com/dqlftfvk3/image/upload/v1642839317/production/white_widow_q5vplj.jpg"
white_widow_photo = URI.open(white_widow_path)
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
dragon_kush_path = "https://res.cloudinary.com/dqlftfvk3/image/upload/v1642839317/production/dragon_kush_w5swkt.jpg"
dragon_kush_photo = URI.open(dragon_kush_path)
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
amnesia_path = "https://res.cloudinary.com/dqlftfvk3/image/upload/v1642839316/production/amnesia_xkwofm.jpg"
amnesia_photo = URI.open(amnesia_path)
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
gorilla_glue_path = "https://res.cloudinary.com/dqlftfvk3/image/upload/v1642839318/production/gorilla_glue_fggceh.jpg"
gorilla_glue_photo = URI.open(gorilla_glue_path)
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
heavy_og_path = "https://res.cloudinary.com/dqlftfvk3/image/upload/v1642839318/production/heavy_og_deeyrh.jpg"
heavy_og_photo = URI.open(heavy_og_path)
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
cookie_dough_path = "https://res.cloudinary.com/dqlftfvk3/image/upload/v1642839317/production/cookie_dough_bhd2ox.jpg"
cookie_dough_photo = URI.open(cookie_dough_path)
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
og_salad_path = "https://res.cloudinary.com/dqlftfvk3/image/upload/v1642839317/production/og_salad_mikq5f.jpg"
og_salad_photo = URI.open(og_salad_path)
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
kalifa_kush_path = "https://res.cloudinary.com/dqlftfvk3/image/upload/v1642839318/production/kalifa_kush_xmfb4a.jpg"
kalifa_kush_photo = URI.open(kalifa_kush_path)
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
watermelon_kush_path = "https://res.cloudinary.com/dqlftfvk3/image/upload/v1642839317/production/watermelon_kush_uxqpfb.jpg"
watermelon_kush_photo = URI.open(watermelon_kush_path)
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
critical_kush_path = "https://res.cloudinary.com/dqlftfvk3/image/upload/v1642839317/production/critical_kush_nhgrvk.jpg"
critical_kush_photo = URI.open(critical_kush_path)
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
lemonade_kush_path = "https://res.cloudinary.com/dqlftfvk3/image/upload/v1642839318/production/lemonade_kush_y6hcwz.jpg"
lemonade_kush_photo = URI.open(lemonade_kush_path)
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
mojito_kush_path = "https://res.cloudinary.com/dqlftfvk3/image/upload/v1642839316/production/mojito_kush_vd31zb.jpg"
mojito_kush_photo = URI.open(mojito_kush_path)
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
peach_kush_path = "https://res.cloudinary.com/dqlftfvk3/image/upload/v1642839317/production/peach_kush_xyjeeq.jpg"
peach_kush_photo = URI.open(peach_kush_path)
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
og_clementine_path = "https://res.cloudinary.com/dqlftfvk3/image/upload/v1642839316/production/og_clementine_jgprq2.jpg"
og_clementine_photo = URI.open(og_clementine_path)
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
key_lime_pie_path = "https://res.cloudinary.com/dqlftfvk3/image/upload/v1642839318/production/key_lime_pie_rqivnr.jpg"
key_lime_pie_photo = URI.open(key_lime_pie_path)
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
lemon_meringue_path = "https://res.cloudinary.com/dqlftfvk3/image/upload/v1642839318/production/lemon_meringue_r84qkp.jpg"
lemon_meringue_photo = URI.open(lemon_meringue_path)
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
ak_020_path = "https://res.cloudinary.com/dqlftfvk3/image/upload/v1642839316/production/ak_020_pyxte4.jpg"
ak_020_photo = URI.open(ak_020_path)
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
chunky_cookies_path = "https://res.cloudinary.com/dqlftfvk3/image/upload/v1642839316/production/chunky_cookies_nj25qu.jpg"
chunky_cookies_photo = URI.open(chunky_cookies_path)
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

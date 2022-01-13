# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_01_13_183345) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "flowers", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.string "country"
    t.string "category"
    t.text "description"
    t.decimal "cbd_ratio"
    t.string "effect"
    t.string "flavor"
    t.decimal "weight"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.string "picture"
    t.index ["user_id"], name: "index_flowers_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.boolean "paid"
    t.decimal "total_amount"
    t.bigint "flower_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["flower_id"], name: "index_orders_on_flower_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "grade"
    t.text "comment"
    t.bigint "user_id", null: false
    t.bigint "flowers_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["flowers_id"], name: "index_reviews_on_flowers_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.integer "phone_number"
    t.string "adress"
    t.integer "zip_code"
    t.string "city"
    t.string "country"
    t.boolean "merchant"
    t.string "vat_number"
    t.string "kbis"
    t.string "siret"
    t.string "compagny_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "orders", "flowers"
  add_foreign_key "orders", "users"
  add_foreign_key "reviews", "flowers", column: "flowers_id"
  add_foreign_key "reviews", "users"
end

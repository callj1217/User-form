# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20190323203912) do

  create_table "cars", force: :cascade do |t|
    t.string "brand"
    t.string "model"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "num_wheels"
    t.float "engine_size"
    t.boolean "is_eletric"
    t.datetime "date_purchased"
    t.index ["user_id"], name: "index_cars_on_user_id"
  end

  create_table "pets", force: :cascade do |t|
    t.string "pet_name"
    t.string "kind"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "birth"
    t.integer "num_siblings"
    t.float "shoe_size"
    t.boolean "us_citizen"
    t.string "gmail"
    t.string "password_digest"
  end

end

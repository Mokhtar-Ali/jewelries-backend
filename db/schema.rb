# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_30_165500) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chains", force: :cascade do |t|
    t.integer "ic"
    t.string "gender"
    t.string "age"
    t.string "metal"
    t.string "name"
    t.integer "price"
    t.integer "retail_price"
    t.string "color"
    t.string "details"
    t.boolean "sale", default: false
    t.text "sizes", default: [], array: true
    t.text "lengths", default: [], array: true
    t.text "pictures", default: [], array: true
    t.integer "jewelry_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "earings", force: :cascade do |t|
    t.integer "ic"
    t.string "gender"
    t.string "age"
    t.string "metal"
    t.string "name"
    t.integer "price"
    t.integer "retail_price"
    t.string "color"
    t.string "details"
    t.integer "gold_carat"
    t.boolean "sale", default: false
    t.text "sizes", default: [], array: true
    t.text "lengths", default: [], array: true
    t.text "pictures", default: [], array: true
    t.integer "jewelry_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "jewelries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pendents", force: :cascade do |t|
    t.integer "ic"
    t.string "gender"
    t.string "age"
    t.string "metal"
    t.string "name"
    t.integer "price"
    t.integer "retail_price"
    t.string "color"
    t.string "details"
    t.integer "gold_carat"
    t.boolean "sale", default: false
    t.text "sizes", default: [], array: true
    t.text "pictures", default: [], array: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rings", force: :cascade do |t|
    t.integer "ic"
    t.string "gender"
    t.string "age"
    t.string "metal"
    t.string "name"
    t.integer "price"
    t.integer "retail_price"
    t.string "color"
    t.string "details"
    t.integer "gold_carat"
    t.boolean "sale", default: false
    t.text "sizes", default: [], array: true
    t.text "lengths", default: [], array: true
    t.text "pictures", default: [], array: true
    t.integer "jewelry_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end

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

ActiveRecord::Schema.define(version: 2020_10_30_111638) do

  create_table "financingtypes", force: :cascade do |t|
    t.string "month"
    t.integer "year"
    t.string "region"
    t.string "area_code"
    t.decimal "average_price"
    t.decimal "cash_price"
    t.decimal "mortgage_price"
    t.integer "location_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["location_id"], name: "index_financingtypes_on_location_id"
  end

  create_table "housingtypeprices", force: :cascade do |t|
    t.string "month"
    t.integer "year"
    t.string "region"
    t.string "area_code"
    t.decimal "detached"
    t.decimal "semidetached"
    t.decimal "terraced"
    t.decimal "flat"
    t.integer "location_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["location_id"], name: "index_housingtypeprices_on_location_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "region"
    t.string "area_code"
    t.decimal "latitude"
    t.decimal "longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "financingtypes", "locations"
  add_foreign_key "housingtypeprices", "locations"
end

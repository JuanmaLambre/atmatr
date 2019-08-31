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

ActiveRecord::Schema.define(version: 2019_08_31_181330) do

  create_table "atms", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci", force: :cascade do |t|
    t.float "long"
    t.float "lat"
    t.string "bank"
    t.string "network"
    t.string "location"
    t.string "city"
    t.integer "terminals"
    t.boolean "blindness_assistance"
    t.boolean "dolars"
    t.string "street"
    t.integer "street_number"
    t.string "second_street"
    t.string "neighborhood"
    t.string "commune"
    t.integer "code"
    t.string "zipcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

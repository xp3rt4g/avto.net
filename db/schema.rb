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

ActiveRecord::Schema.define(version: 2021_01_12_112230) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "account_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "car_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cars", force: :cascade do |t|
    t.integer "user_id"
    t.integer "model_id"
    t.string "type"
    t.integer "car_type_id"
    t.integer "vehicle_status_id"
    t.boolean "has_warranty"
    t.boolean "has_guarranty"
    t.boolean "oldtimer"
    t.date "first_registration"
    t.integer "manufacture_year"
    t.date "inspection_expiry"
    t.integer "mileage"
    t.integer "number_of_owner_id"
    t.string "vin"
    t.integer "price"
    t.boolean "cash_discount"
    t.boolean "last_price"
    t.boolean "driveable"
    t.boolean "damaged"
    t.boolean "crashed"
    t.boolean "service_book"
    t.boolean "slovenian"
    t.boolean "garaged"
    t.boolean "never_crashed"
    t.integer "fuel_type_id"
    t.integer "gearbox_id"
    t.integer "power"
    t.integer "ccm"
    t.integer "doors", limit: 2
    t.integer "seats"
    t.integer "color_id"
    t.boolean "metallic"
    t.decimal "consumption"
    t.boolean "abs"
    t.boolean "fourwheel"
    t.integer "airbags"
    t.boolean "xenon"
    t.boolean "led"
    t.boolean "automatic_lights"
    t.boolean "alarm"
    t.boolean "headup"
    t.boolean "emergency_brake"
    t.boolean "ac"
    t.boolean "digital_ac"
    t.boolean "keyless_go"
    t.boolean "start_stop"
    t.boolean "cruise_control"
    t.boolean "electric_parking_brake"
    t.boolean "cd_player"
    t.boolean "mp3_player"
    t.boolean "usb"
    t.boolean "dab"
    t.boolean "navigation"
    t.boolean "rear_camera"
    t.boolean "towing_hook"
    t.boolean "hill_assist"
    t.boolean "pdc"
    t.text "comment"
    t.boolean "avaliable"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "colors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fuel_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "gearboxes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "images", force: :cascade do |t|
    t.string "url"
    t.integer "car_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "manufacturers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "models", force: :cascade do |t|
    t.string "name"
    t.integer "manufacturer_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "number_of_owners", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "towns", force: :cascade do |t|
    t.string "name"
    t.integer "post_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "seller_title"
    t.string "address"
    t.string "phone"
    t.string "webpage"
    t.integer "account_type_id"
    t.integer "town_id"
    t.string "tax_number"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vehicle_statuses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end

# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20131209195625) do

  create_table "buoys", force: true do |t|
    t.float    "height_significant"
    t.float    "height_max"
    t.float    "period_avg"
    t.float    "period_max"
    t.integer  "swell_direction"
    t.float    "water_temperature"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "location"
  end

  create_table "forecasts", force: true do |t|
    t.integer  "surfline_forecast_id"
    t.integer  "buoy_id"
    t.integer  "tide_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reports", force: true do |t|
    t.integer  "user_id"
    t.integer  "spot_id"
    t.datetime "timestamp"
    t.integer  "score"
    t.integer  "wind"
    t.integer  "sandbank"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "forecast_id"
  end

  add_index "reports", ["user_id", "timestamp"], name: "index_reports_on_user_id_and_timestamp"

  create_table "spots", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "gps"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "surfline_forecasts", force: true do |t|
    t.float    "swell_height"
    t.float    "swell_height_sdev"
    t.integer  "custom_scale"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "timestamp"
    t.string   "spot"
  end

  create_table "swell_infos", force: true do |t|
    t.float    "height"
    t.integer  "direction"
    t.integer  "period"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "surfline_forecast_id"
  end

  create_table "tides", force: true do |t|
    t.float    "size"
    t.datetime "date"
    t.string   "tyde_type"
    t.string   "seaport"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "surfer_or_spongy"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.string   "role",             default: "normal"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

  create_table "wind_infos", force: true do |t|
    t.float    "strength"
    t.integer  "direction"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "surfline_forecast_id"
  end

end

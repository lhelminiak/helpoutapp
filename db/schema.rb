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

ActiveRecord::Schema.define(version: 20160822184510) do

  create_table "bosses", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "profile_picture"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "bosses", ["email"], name: "index_bosses_on_email", unique: true
  add_index "bosses", ["reset_password_token"], name: "index_bosses_on_reset_password_token", unique: true

  create_table "employees", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "profile_picture"
    t.string   "highschool_name"
    t.string   "driver_license"
    t.string   "highschool_grade"
    t.text     "bio"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "location2s", force: :cascade do |t|
    t.integer  "employee_id"
    t.string   "street_address"
    t.string   "city"
    t.string   "state_code"
    t.integer  "zip_code"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "location2s", ["employee_id"], name: "index_location2s_on_employee_id"

  create_table "locations", force: :cascade do |t|
    t.integer  "boss_id"
    t.string   "street_address"
    t.string   "city"
    t.string   "state_code"
    t.integer  "zip_code"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "locations", ["boss_id"], name: "index_locations_on_boss_id"

end

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

ActiveRecord::Schema.define(version: 20140310052814) do

  create_table "fruit_types", force: true do |t|
    t.string   "type_name"
    t.string   "type_description"
    t.integer  "super_tpye_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fruits", force: true do |t|
    t.string   "fruit_name"
    t.string   "origin_place"
    t.string   "description"
    t.integer  "fruit_type"
    t.float    "price_present"
    t.float    "price_hirtory"
    t.float    "price_other"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.text    "order_date"
    t.integer "user_id"
    t.integer "fruit_id"
    t.integer "fruit_amount"
    t.integer "status"
  end

  create_table "tests", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "username_real"
    t.string   "email"
    t.string   "password"
    t.string   "mail_address"
    t.string   "livingCity"
    t.string   "address"
    t.string   "birthdate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

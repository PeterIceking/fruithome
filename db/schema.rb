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

ActiveRecord::Schema.define(version: 20140330164600) do

  create_table "accounts", force: true do |t|
    t.integer  "user_id"
    t.string   "type"
    t.float    "money"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_users", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "admin_type"
    t.string   "e_mail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "collections", force: true do |t|
    t.integer  "user_id"
    t.integer  "fruit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.integer  "fruit_id"
    t.integer  "user_id"
    t.integer  "content"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consultations", force: true do |t|
    t.integer  "fruit_id"
    t.integer  "user_id"
    t.integer  "status"
    t.string   "question"
    t.string   "answer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fruit_types", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "super_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fruits", force: true do |t|
    t.integer  "fruit_type_id"
    t.integer  "origin_place_id"
    t.integer  "inventory"
    t.string   "name"
    t.string   "introduction"
    t.string   "brief_introduction"
    t.string   "unit"
    t.boolean  "is_hot"
    t.float    "price_present"
    t.float    "price_history"
    t.float    "price_other"
    t.float    "discount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mail_addresses", force: true do |t|
    t.integer  "user_id"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_items", force: true do |t|
    t.integer  "order_id"
    t.integer  "fruit_id"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.integer  "user_id"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "origin_places", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "super_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suppliers", force: true do |t|
    t.string   "name"
    t.string   "phone_number"
    t.string   "e_mail"
    t.string   "address"
    t.string   "city"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "supply_infomations", force: true do |t|
    t.integer  "fruit_id"
    t.integer  "supplier_id"
    t.integer  "quantity"
    t.integer  "status"
    t.float    "price"
    t.float    "mail_cost"
    t.float    "total_cost"
    t.string   "start_date"
    t.string   "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "real_name"
    t.string   "sex"
    t.string   "birthdate"
    t.string   "e_mail"
    t.string   "password"
    t.string   "question"
    t.string   "answer"
    t.string   "phone_number"
    t.string   "shopping_exp"
    t.string   "member_type"
    t.string   "city"
    t.string   "post_code"
    t.string   "advance_payment"
    t.string   "latest_log_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

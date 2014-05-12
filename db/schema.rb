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

ActiveRecord::Schema.define(version: 20140511153800) do

  create_table "_admin_users_old_20140510", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "password_digest"
    t.string   "admin_type"
    t.string   "e_mail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "_admin_users_old_20140510_1", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "password_digest"
    t.string   "admin_type"
    t.string   "e_mail"
    t.string   "latest_log_date", limit: nil
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "_comments_old_20140502", force: true do |t|
    t.integer  "fruit_id"
    t.integer  "user_id"
    t.integer  "content"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "_comments_old_20140506", force: true do |t|
    t.integer  "fruit_id"
    t.integer  "user_id"
    t.string   "content",    limit: nil
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "_mail_addresses_old_20140509", force: true do |t|
    t.integer  "user_id"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "_order_items_old_20140502", force: true do |t|
    t.integer  "order_id"
    t.integer  "fruit_id"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "_orders_old_20140410", force: true do |t|
    t.integer  "user_id"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

# Could not dump table "_orders_old_20140410_1" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

# Could not dump table "_orders_old_20140508" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

# Could not dump table "_users_old_20140503" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

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
    t.string   "password_digest"
    t.string   "admin_type"
    t.string   "phone_number",    limit: nil
    t.string   "e_mail"
    t.string   "latest_log_date", limit: nil
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
    t.integer  "order_id"
    t.integer  "user_id"
    t.string   "content",    limit: nil
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

  create_table "fruit_types_copy", force: true do |t|
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

  create_table "fruits_copy", force: true do |t|
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

  create_table "fruits_copy1", force: true do |t|
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
    t.string   "post_code",  limit: nil
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_items", force: true do |t|
    t.integer  "order_id"
    t.integer  "fruit_id"
    t.integer  "quantity"
    t.float    "price"
    t.string   "unit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_statuses", force: true do |t|
    t.integer  "flag"
    t.integer  "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

# Could not dump table "orders" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

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

# Could not dump table "users" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

end

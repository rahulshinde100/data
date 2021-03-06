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

ActiveRecord::Schema.define(version: 20151224125950) do

  create_table "orders", force: true do |t|
    t.integer  "tracking_no"
    t.string   "full_name"
    t.integer  "quantity"
    t.float    "amount"
    t.string   "email"
    t.integer  "mobno"
    t.string   "city"
    t.string   "state"
    t.integer  "postal_code"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["product_id"], name: "index_orders_on_product_id", using: :btree

  create_table "products", force: true do |t|
    t.string   "company_name"
    t.string   "product_name"
    t.string   "available_quantity"
    t.float    "price"
    t.integer  "sku"
    t.string   "city"
    t.string   "state"
    t.integer  "postal_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

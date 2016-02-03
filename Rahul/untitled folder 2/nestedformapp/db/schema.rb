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

ActiveRecord::Schema.define(version: 20160128051928) do

  create_table "addresses", force: true do |t|
    t.string   "village"
    t.string   "district"
    t.integer  "pincode"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "addresses", ["student_id"], name: "index_addresses_on_student_id", using: :btree

  create_table "mysubjects", force: true do |t|
    t.string   "my_subjects"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "name"
    t.string   "classs"
    t.integer  "age"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subjects", force: true do |t|
    t.text     "all_subjects"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subjects", ["student_id"], name: "index_subjects_on_student_id", using: :btree

  create_table "temp_addresses", force: true do |t|
    t.string   "village"
    t.string   "district"
    t.integer  "pincode"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "temp_addresses", ["student_id"], name: "index_temp_addresses_on_student_id", using: :btree

end

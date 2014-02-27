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

ActiveRecord::Schema.define(version: 20140227041806) do

  create_table "accessories", force: true do |t|
    t.string   "name"
    t.integer  "price"
    t.text     "description"
    t.text     "features"
    t.string   "compatible"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
  end

  create_table "accessory_galleries", force: true do |t|
    t.integer  "accessory_id"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "charger_galleries", force: true do |t|
    t.integer  "charger_id"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "chargers", force: true do |t|
    t.string   "name"
    t.integer  "price"
    t.text     "description"
    t.text     "features"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
  end

  create_table "flashlight_galleries", force: true do |t|
    t.integer  "flashlight_id"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "flashlights", force: true do |t|
    t.string   "model"
    t.integer  "price"
    t.string   "serie"
    t.integer  "lumens"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "features"
    t.text     "specifications"
    t.string   "image"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "full_name"
    t.string   "role"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "attempts"
  end

end

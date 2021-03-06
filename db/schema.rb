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

ActiveRecord::Schema.define(version: 20151212102020) do

  create_table "buildings", force: :cascade do |t|
    t.integer  "building_id"
    t.integer  "floor"
    t.float    "avg",         default: 0.0
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "college_id"
    t.string   "bname"
    t.string   "slug"
  end

  add_index "buildings", ["slug"], name: "index_buildings_on_slug"

  create_table "buildings_colleges", force: :cascade do |t|
    t.integer  "building_id"
    t.integer  "college_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "buildings_colleges", ["building_id"], name: "index_buildings_colleges_on_building_id"
  add_index "buildings_colleges", ["college_id"], name: "index_buildings_colleges_on_college_id"

  create_table "colleges", force: :cascade do |t|
    t.string   "cname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "slug"
  end

  add_index "colleges", ["slug"], name: "index_colleges_on_slug"

  create_table "comments", force: :cascade do |t|
    t.integer  "building_id"
    t.integer  "bidet"
    t.integer  "bok",         default: 0
    t.integer  "chung",       default: 0
    t.integer  "bun",         default: 0
    t.text     "comment"
    t.string   "floor"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "quotes", force: :cascade do |t|
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

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

ActiveRecord::Schema.define(version: 20170317043155) do

  create_table "event_position_relationships", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "position_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "event_trait_relationships", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "trait_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.text     "name"
    t.date     "date"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.datetime "endDate"
    t.integer  "volunteersNeeded"
    t.string   "compensation"
    t.string   "location"
    t.boolean  "reocurring"
    t.string   "contact"
    t.string   "description"
  end

  create_table "groups", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organization_event_relationships", force: :cascade do |t|
    t.integer  "organization_id"
    t.integer  "event_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "organization_trait_relationships", force: :cascade do |t|
    t.integer  "organization_id"
    t.integer  "trait_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "biography"
    t.string   "email"
    t.string   "password"
    t.string   "name"
    t.string   "phoneNum"
    t.string   "url"
    t.string   "location"
    t.integer  "size"
  end

  create_table "positions", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "traits", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_event_relationships", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_position_relationships", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "position_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.text     "email"
    t.text     "password"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "name"
    t.string   "biography"
    t.string   "education"
    t.string   "phoneNum"
    t.datetime "birthDate"
    t.datetime "availabilityBegin"
    t.datetime "availabilityEnd"
  end

  create_table "volunteers", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "works", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end

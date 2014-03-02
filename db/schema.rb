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

ActiveRecord::Schema.define(version: 20140302195822) do

  create_table "commitment_types", force: true do |t|
    t.string   "type"
    t.string   "commitment_item"
    t.integer  "num_people"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "commitment_types_gatherings_joins", force: true do |t|
    t.integer "commitment_type_id"
    t.integer "gathering_id"
  end

  create_table "gatherings", force: true do |t|
    t.string   "name",           limit: 100
    t.date     "event_date"
    t.time     "event_time"
    t.date     "ante_date"
    t.time     "ante_time"
    t.string   "location",       limit: 100
    t.string   "gathering_type"
    t.text     "description"
    t.integer  "max_attendees"
    t.integer  "min_attendees"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gatherings_users_joins", force: true do |t|
    t.integer "gathering_id"
    t.integer "user_id"
    t.string  "user_type"
  end

  create_table "users", force: true do |t|
    t.string   "first_name",            limit: 50
    t.string   "last_name",             limit: 50
    t.string   "email",                            default: "", null: false
    t.string   "password",              limit: 40
    t.string   "password_confirmation"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

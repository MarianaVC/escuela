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

ActiveRecord::Schema.define(version: 20150703232320) do

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "rfc"
    t.string   "phone"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.integer  "monday"
    t.integer  "tuesday"
    t.integer  "wednesday"
    t.integer  "thursday"
    t.integer  "friday"
    t.string   "time_class"
    t.string   "level"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "teacher_id"
    t.string   "state"
  end

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "mother_name"
    t.string   "rfc"
    t.string   "phone"
    t.string   "mail"
    t.string   "user_name"
    t.string   "password"
    t.string   "birthday"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "group_id"
    t.integer  "company_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "mother_name"
    t.string   "rfc"
    t.string   "phone"
    t.string   "email"
    t.string   "address"
    t.string   "birthday"
    t.string   "user_name"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "weekley_reports", force: :cascade do |t|
  end

end

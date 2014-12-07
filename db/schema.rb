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

ActiveRecord::Schema.define(version: 20141129201156) do

  create_table "counties", force: true do |t|
    t.integer  "county_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dots", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mailaddresses", force: true do |t|
    t.integer  "mailadd_id"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zipcode"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "originators", force: true do |t|
    t.integer  "originator_id"
    t.string   "name"
    t.integer  "phonenumber"
    t.string   "phonedescription"
    t.string   "email"
    t.string   "emaildescription"
    t.integer  "faxnumber"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "physicaladdresses", force: true do |t|
    t.integer  "phyadd_id"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zipcode"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "points", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.integer  "project_id"
    t.string   "name"
    t.string   "description"
    t.string   "objective"
    t.string   "synopsis"
    t.string   "background"
    t.string   "comment"
    t.string   "url"
    t.string   "urldescription"
    t.string   "coursenumber"
    t.string   "coursedepartment"
    t.string   "coursenotes"
    t.string   "picture"
    t.integer  "originator_id"
    t.integer  "unit_id"
    t.integer  "county_id"
    t.integer  "zipcode_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "units", force: true do |t|
    t.integer  "unit_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "zipcodes", force: true do |t|
    t.integer  "zipcode_id"
    t.integer  "zipcode"
    t.integer  "county_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

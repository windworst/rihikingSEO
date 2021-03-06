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

ActiveRecord::Schema.define(version: 20140214025150) do

  create_table "activities", force: true do |t|
    t.string   "name"
    t.integer  "target_id"
    t.string   "link"
    t.integer  "status_id",  default: 10
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "activities", ["status_id"], name: "index_activities_on_status_id"
  add_index "activities", ["target_id"], name: "index_activities_on_target_id"

  create_table "statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "targets", force: true do |t|
    t.string   "name"
    t.string   "url",                                                  null: false
    t.integer  "status",     default: 10,                              null: false
    t.string   "selector",   default: "a:not([href^=\"javascript\"])"
    t.string   "linkreg"
    t.string   "namereg",    default: "\\D+"
    t.integer  "scancount",  default: 0,                               null: false
    t.datetime "scantime"
    t.datetime "updatetime"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "targetstatuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

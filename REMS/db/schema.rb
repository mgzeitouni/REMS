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

ActiveRecord::Schema.define(version: 20140821024115) do

  create_table "comps", force: true do |t|
    t.string   "address"
    t.string   "street"
    t.string   "cross_street_1"
    t.string   "cross_street_2"
    t.integer  "frontage"
    t.integer  "ground"
    t.integer  "basement"
    t.integer  "mezz"
    t.integer  "second"
    t.integer  "third"
    t.integer  "annual_rent"
    t.string   "agent_landlord_company"
    t.string   "contact"
    t.string   "telephone"
    t.string   "email"
    t.string   "term"
    t.string   "history"
    t.date     "date"
    t.date     "updated_date"
    t.string   "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

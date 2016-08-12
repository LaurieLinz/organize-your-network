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

ActiveRecord::Schema.define(version: 20160814071610) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", force: :cascade do |t|
    t.string   "first_name",             null: false
    t.string   "last_name",              null: false
    t.string   "email"
    t.string   "phone"
    t.string   "met_on_social_platform"
    t.date     "date_met",               null: false
    t.string   "availability"
    t.integer  "skillset",               null: false
    t.text     "notes"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "contacts_expertises", id: false, force: :cascade do |t|
    t.integer "expertise_id", null: false
    t.integer "contact_id",   null: false
  end

  create_table "expertises", force: :cascade do |t|
    t.string   "discipline"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

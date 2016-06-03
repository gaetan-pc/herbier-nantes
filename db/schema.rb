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

ActiveRecord::Schema.define(version: 20160602220656) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "specimens", force: :cascade do |t|
    t.string   "identifiedBy"
    t.string   "familly_ref"
    t.string   "familly"
    t.integer  "genus_ref"
    t.integer  "species_ref"
    t.string   "genus"
    t.string   "species"
    t.string   "taxon"
    t.string   "scan_num"
    t.string   "sheet"
    t.string   "string"
    t.string   "record_date_note"
    t.string   "author"
    t.string   "subspecies"
    t.integer  "specimen_count"
    t.string   "material_organ"
    t.string   "material_integrity"
    t.string   "material_state"
    t.string   "province_code"
    t.string   "province"
    t.string   "municipality"
    t.string   "locality"
    t.string   "sampling_location"
    t.string   "habitat"
    t.string   "remarks_1"
    t.string   "remarks_2"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.float    "latitude"
    t.float    "longitude"
  end

end

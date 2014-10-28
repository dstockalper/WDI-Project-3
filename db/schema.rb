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

ActiveRecord::Schema.define(version: 20141028210757) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "reviews", force: true do |t|
    t.integer  "reviewer_id"
    t.string   "reviewer_location"
    t.string   "reviewed_plate_number"
    t.string   "review_category"
    t.string   "review_detail"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "reviewed_plate_state"
    t.integer  "aggressive_speeding"
    t.integer  "aggressive_weaving"
    t.integer  "aggressive_tailgating"
    t.integer  "aggressive_cutting"
    t.integer  "aggressive_rage"
    t.integer  "aggressive_other"
    t.integer  "inattentive_braking"
    t.integer  "inattentive_drifting"
    t.integer  "inattentive_phone"
    t.integer  "inattentive_pedestrian"
    t.integer  "inattentive_drunk"
    t.integer  "inattentive_other"
    t.integer  "alert_safe"
    t.integer  "alert_courteous"
    t.integer  "parking_blocking"
    t.integer  "parking_illegal"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password"
    t.string   "license_plate_state"
    t.string   "license_plate_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "vehicle_image_file_name"
    t.string   "vehicle_image_content_type"
    t.integer  "vehicle_image_file_size"
    t.datetime "vehicle_image_updated_at"
    t.string   "password_digest"
  end

end

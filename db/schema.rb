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

ActiveRecord::Schema.define(version: 20150201040147) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rankings", force: true do |t|
    t.decimal  "score"
    t.integer  "user_id"
    t.date     "ranking_for_day"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "poor_event_sequence"
    t.boolean  "poor_comments"
    t.boolean  "blank_safety_meeting"
    t.boolean  "missing_rig_crew_travel_details"
    t.boolean  "not_using_device"
    t.boolean  "not_syncing_device"
    t.boolean  "missing_tubing_details"
    t.boolean  "poor_event_accuracy"
    t.boolean  "missing_events"
    t.boolean  "missing_shut_in_overnight_details"
    t.boolean  "missing_pressure_details"
    t.boolean  "poor_rig_up_rig_down_accuracy"
    t.boolean  "did_not_stop_timer"
    t.boolean  "missing_well_control_details"
    t.boolean  "poor_safety_personnel_details"
    t.boolean  "missing_waiting_on_details"
    t.boolean  "poor_well_control_comments"
    t.boolean  "missing_failure_details"
    t.boolean  "missing_tag_fill_details"
    t.integer  "rig_id"
    t.integer  "company_id"
  end

  add_index "rankings", ["company_id"], name: "index_rankings_on_company_id", using: :btree
  add_index "rankings", ["rig_id"], name: "index_rankings_on_rig_id", using: :btree
  add_index "rankings", ["user_id"], name: "index_rankings_on_user_id", using: :btree

  create_table "rigs", force: true do |t|
    t.integer  "company_id"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rigs", ["company_id"], name: "index_rigs_on_company_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_id"
    t.string   "name"
  end

  add_index "users", ["company_id"], name: "index_users_on_company_id", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end

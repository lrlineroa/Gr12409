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

ActiveRecord::Schema.define(version: 2018_09_15_204627) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "event_registries", force: :cascade do |t|
    t.datetime "arrival"
    t.datetime "departure"
    t.integer "won_points"
    t.bigint "user_id"
    t.bigint "event_id"
    t.index ["event_id"], name: "index_event_registries_on_event_id"
    t.index ["user_id"], name: "index_event_registries_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.datetime "datetime_start"
    t.datetime "datetime_end"
    t.text "description"
    t.string "place"
    t.polygon "geofence"
    t.integer "requested_by"
    t.integer "authorized_by"
    t.integer "event_points"
    t.integer "state"
    t.bigint "season_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["season_id"], name: "index_events_on_season_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
  end

  create_table "roles_users", id: false, force: :cascade do |t|
    t.bigint "role_id", null: false
    t.bigint "user_id", null: false
  end

  create_table "seasons", force: :cascade do |t|
    t.string "name"
    t.integer "state"
  end

  create_table "user_records", force: :cascade do |t|
    t.integer "season_points"
    t.bigint "user_id"
    t.bigint "season_id"
    t.index ["season_id"], name: "index_user_records_on_season_id"
    t.index ["user_id"], name: "index_user_records_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.bigint "phone"
    t.integer "current_points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "event_registries", "events"
  add_foreign_key "event_registries", "users"
  add_foreign_key "events", "seasons"
  add_foreign_key "user_records", "seasons"
  add_foreign_key "user_records", "users"
end

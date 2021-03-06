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

ActiveRecord::Schema.define(version: 20170327234807) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "coaches", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "slug"
    t.index ["slug"], name: "index_coaches_on_slug", using: :btree
  end

  create_table "player_coaches", force: :cascade do |t|
    t.integer "player_id"
    t.integer "coach_id"
    t.boolean "current",   default: true
    t.index ["coach_id"], name: "index_player_coaches_on_coach_id", using: :btree
    t.index ["player_id"], name: "index_player_coaches_on_player_id", using: :btree
  end

  create_table "players", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "status",     default: "active"
    t.string   "slug"
    t.index ["slug"], name: "index_players_on_slug", using: :btree
  end

  create_table "team_coaches", force: :cascade do |t|
    t.integer  "coach_id"
    t.integer  "team_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.boolean  "current",    default: true
    t.index ["coach_id"], name: "index_team_coaches_on_coach_id", using: :btree
    t.index ["team_id"], name: "index_team_coaches_on_team_id", using: :btree
  end

  create_table "team_players", force: :cascade do |t|
    t.integer "team_id"
    t.integer "player_id"
    t.boolean "current",   default: true
    t.index ["player_id"], name: "index_team_players_on_player_id", using: :btree
    t.index ["team_id"], name: "index_team_players_on_team_id", using: :btree
  end

  create_table "teams", force: :cascade do |t|
    t.string   "city"
    t.string   "name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "state_or_province"
    t.string   "conference"
    t.string   "slug"
    t.index ["slug"], name: "index_teams_on_slug", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "name"
    t.string   "email"
    t.integer  "role",            default: 1
  end

  add_foreign_key "player_coaches", "coaches"
  add_foreign_key "player_coaches", "players"
  add_foreign_key "team_coaches", "coaches"
  add_foreign_key "team_coaches", "teams"
  add_foreign_key "team_players", "players"
  add_foreign_key "team_players", "teams"
end

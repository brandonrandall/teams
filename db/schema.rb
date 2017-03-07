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

ActiveRecord::Schema.define(version: 20170307034953) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "coaches", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players_coaches", force: :cascade do |t|
    t.integer "players_id"
    t.integer "coaches_id"
    t.index ["coaches_id"], name: "index_players_coaches_on_coaches_id", using: :btree
    t.index ["players_id"], name: "index_players_coaches_on_players_id", using: :btree
  end

  create_table "teams", force: :cascade do |t|
    t.string   "city"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams_coaches", force: :cascade do |t|
    t.integer "coaches_id"
    t.integer "teams_id"
    t.index ["coaches_id"], name: "index_teams_coaches_on_coaches_id", using: :btree
    t.index ["teams_id"], name: "index_teams_coaches_on_teams_id", using: :btree
  end

  create_table "teams_players", force: :cascade do |t|
    t.integer "players_id"
    t.integer "teams_id"
    t.index ["players_id"], name: "index_teams_players_on_players_id", using: :btree
    t.index ["teams_id"], name: "index_teams_players_on_teams_id", using: :btree
  end

  add_foreign_key "players_coaches", "coaches", column: "coaches_id"
  add_foreign_key "players_coaches", "players", column: "players_id"
  add_foreign_key "teams_coaches", "coaches", column: "coaches_id"
  add_foreign_key "teams_coaches", "teams", column: "teams_id"
  add_foreign_key "teams_players", "players", column: "players_id"
  add_foreign_key "teams_players", "teams", column: "teams_id"
end

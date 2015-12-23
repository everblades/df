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

ActiveRecord::Schema.define(version: 20151223033357) do

  create_table "contests", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contests_games", id: false, force: :cascade do |t|
    t.integer "contest_id"
    t.integer "game_id"
  end

  add_index "contests_games", ["contest_id"], name: "index_contests_games_on_contest_id"
  add_index "contests_games", ["game_id"], name: "index_contests_games_on_game_id"

  create_table "contests_players", id: false, force: :cascade do |t|
    t.integer "contest_id"
    t.integer "player_id"
  end

  add_index "contests_players", ["contest_id"], name: "index_contests_players_on_contest_id"
  add_index "contests_players", ["player_id"], name: "index_contests_players_on_player_id"

  create_table "contests_teams", id: false, force: :cascade do |t|
    t.integer "contest_id"
    t.integer "team_id"
  end

  add_index "contests_teams", ["contest_id"], name: "index_contests_teams_on_contest_id"
  add_index "contests_teams", ["team_id"], name: "index_contests_teams_on_team_id"

  create_table "games", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games_teams", id: false, force: :cascade do |t|
    t.integer "game_id"
    t.integer "team_id"
  end

  add_index "games_teams", ["game_id"], name: "index_games_teams_on_game_id"
  add_index "games_teams", ["team_id"], name: "index_games_teams_on_team_id"

  create_table "players", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sites", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sports", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

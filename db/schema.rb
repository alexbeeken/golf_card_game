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

ActiveRecord::Schema.define(version: 20150204181924) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cards", force: :cascade do |t|
    t.belongs_to "card_holder"
    t.integer "deck_card_order"
    t.boolean "flipped"
  end

  create_table "decks", force: :cascade do |t|
    t.integer "game_id"
  end

  create_table "games", force: :cascade do |t|
    t.boolean "ended"
    t.string  "winner"
    t.integer "rounds_played"
    t.integer "current_player_id"
    t.boolean "last_turn"
  end

  create_table "hands", force: :cascade do |t|
    t.boolean  "winner"
    t.integer  "final_score"
    t.integer  "zero_zero_card"
    t.integer  "zero_one_card"
    t.integer  "one_zero_card"
    t.integer  "one_one_card"
    t.integer  "two_zero_card"
    t.integer  "two_one_card"
    t.integer  "player_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: :cascade do |t|
    t.string  "name"
    t.string  "current_score"
    t.integer "player_number"
    t.integer "game_id"
  end

end

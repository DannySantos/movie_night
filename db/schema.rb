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

ActiveRecord::Schema.define(version: 4) do

  create_table "movies", force: :cascade do |t|
    t.string  "title"
    t.integer "year"
    t.string  "genre"
    t.boolean "has_been_watched"
    t.integer "suggester_id"
  end

  add_index "movies", ["suggester_id"], name: "index_movies_on_suggester_id"

  create_table "polls", force: :cascade do |t|
    t.string  "name"
    t.boolean "is_decided"
    t.date    "date"
  end

  create_table "users", force: :cascade do |t|
    t.text "forename"
    t.text "surname"
    t.text "email"
  end

  create_table "votes", force: :cascade do |t|
    t.integer "poll_id"
    t.integer "user_id"
    t.integer "movie_id"
  end

  add_index "votes", ["movie_id"], name: "index_votes_on_movie_id"
  add_index "votes", ["poll_id"], name: "index_votes_on_poll_id"
  add_index "votes", ["user_id"], name: "index_votes_on_user_id"

end

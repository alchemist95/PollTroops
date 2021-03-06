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

ActiveRecord::Schema.define(version: 20160212204844) do

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.string   "image_url"
    t.string   "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "people", ["uid"], name: "index_people_on_uid"

  create_table "polls", force: :cascade do |t|
    t.text     "topic"
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "person_id"
  end

  create_table "users", force: :cascade do |t|
    t.integer  "uid"
    t.string   "name"
    t.string   "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vote_options", force: :cascade do |t|
    t.string   "title"
    t.integer  "poll_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "vote_options", ["poll_id"], name: "index_vote_options_on_poll_id"

  create_table "votes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "vote_option_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "person_id"
  end

  add_index "votes", ["user_id"], name: "index_votes_on_user_id"
  add_index "votes", ["vote_option_id", "user_id"], name: "index_votes_on_vote_option_id_and_user_id", unique: true
  add_index "votes", ["vote_option_id"], name: "index_votes_on_vote_option_id"

end

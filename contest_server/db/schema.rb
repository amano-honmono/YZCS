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

ActiveRecord::Schema.define(version: 20170307151441) do

  create_table "contests", force: :cascade do |t|
    t.string   "contest_name"
    t.datetime "start_time"
    t.datetime "ending_time"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["contest_name"], name: "index_contests_on_contest_name", unique: true
  end

  create_table "problems", force: :cascade do |t|
    t.string   "problem_url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["problem_url"], name: "index_problems_on_problem_url", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string   "user_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_name"], name: "index_users_on_user_name", unique: true
  end

end

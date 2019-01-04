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

ActiveRecord::Schema.define(version: 2014_05_11_221924) do

  create_table "events", force: :cascade do |t|
    t.text "description"
    t.date "date"
    t.text "summary"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "headline"
    t.boolean "locked"
    t.integer "feedback_total", default: 0
    t.integer "positive_feedback", default: 0
  end

  create_table "questions", force: :cascade do |t|
    t.string "content"
    t.integer "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "count"
    t.index ["event_id"], name: "index_questions_on_event_id"
  end

end

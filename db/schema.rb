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

ActiveRecord::Schema.define(version: 20200131161719) do

  create_table "headers", force: :cascade do |t|
    t.integer "heading_type"
    t.integer "member_id"
    t.text "detail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_headers_on_member_id"
  end

  create_table "headings", force: :cascade do |t|
    t.integer "type"
    t.integer "member_id"
    t.text "detail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_headings_on_member_id"
  end

  create_table "matches", force: :cascade do |t|
    t.integer "member_id"
    t.integer "matched_member_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["matched_member_id"], name: "index_matches_on_matched_member_id"
    t.index ["member_id", "matched_member_id"], name: "index_matches_on_member_id_and_matched_member_id", unique: true
    t.index ["member_id"], name: "index_matches_on_member_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "name"
    t.string "original_url"
    t.string "short_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

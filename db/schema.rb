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

ActiveRecord::Schema.define(version: 20180228182149) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string "caption", null: false
    t.string "nfcaption"
    t.string "nfdesc"
    t.datetime "publdate"
    t.integer "artype", null: false
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artype", "event_id"], name: "index_articles_on_artype_and_event_id"
    t.index ["event_id"], name: "index_articles_on_event_id"
  end

  create_table "blocks", force: :cascade do |t|
    t.integer "num", null: false
    t.text "btext"
    t.bigint "article_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_blocks_on_article_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "ename", null: false
    t.datetime "estart", null: false
    t.datetime "efinish"
    t.string "level", null: false
    t.text "edesc", null: false
    t.text "member", null: false
    t.text "eplace", null: false
    t.string "publ"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.bigint "event_id"
    t.string "sname", null: false
    t.datetime "sstart", null: false
    t.datetime "sfinish"
    t.text "splace", null: false
    t.text "sdesc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_schedules_on_event_id"
  end

  add_foreign_key "articles", "events"
  add_foreign_key "blocks", "articles"
  add_foreign_key "schedules", "events"
end

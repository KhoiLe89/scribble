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

ActiveRecord::Schema.define(version: 20161012234310) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.integer  "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_categories_on_post_id", using: :btree
  end

  create_table "comments", force: :cascade do |t|
    t.string  "body"
    t.integer "likes_comments"
    t.string  "post"
    t.string  "title"
    t.integer "post_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string  "headline"
    t.integer "likes"
    t.string  "img_url"
  end

  create_table "tags", force: :cascade do |t|
    t.integer  "post_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_tags_on_category_id", using: :btree
    t.index ["post_id"], name: "index_tags_on_post_id", using: :btree
  end

  add_foreign_key "categories", "posts"
  add_foreign_key "tags", "categories"
  add_foreign_key "tags", "posts"
end

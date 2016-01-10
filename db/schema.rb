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

ActiveRecord::Schema.define(version: 20160101022948) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "galleries", force: :cascade do |t|
    t.text     "name"
    t.text     "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "picture_products", force: :cascade do |t|
    t.integer  "picture_id"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "picture_products", ["picture_id"], name: "index_picture_products_on_picture_id", using: :btree
  add_index "picture_products", ["product_id"], name: "index_picture_products_on_product_id", using: :btree

  create_table "pictures", force: :cascade do |t|
    t.text     "name"
    t.text     "description"
    t.boolean  "print"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "gallery_id"
  end

  add_index "pictures", ["gallery_id"], name: "index_pictures_on_gallery_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.text     "medium"
    t.text     "size"
    t.integer  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "picture_products", "pictures"
  add_foreign_key "picture_products", "products"
  add_foreign_key "pictures", "galleries"
end

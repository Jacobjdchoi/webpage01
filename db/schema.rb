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

ActiveRecord::Schema.define(version: 20161002094213) do

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "articles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "title"
    t.text     "body"
  end

  create_table "brands", force: :cascade do |t|
    t.string   "name"
    t.integer  "importance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "product_id"
  end

  add_index "brands", ["product_id"], name: "index_brands_on_product_id"

  create_table "contacts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.string   "email"
    t.string   "title"
    t.string   "topic"
    t.text     "body"
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.integer  "importance"
    t.integer  "wellknown"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "url"
  end

  create_table "markets", force: :cascade do |t|
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "industry_name"
  end

  create_table "markets_products", id: false, force: :cascade do |t|
    t.integer "market_id",  null: false
    t.integer "product_id", null: false
  end

  add_index "markets_products", ["market_id", "product_id"], name: "index_markets_products_on_market_id_and_product_id"
  add_index "markets_products", ["product_id", "market_id"], name: "index_markets_products_on_product_id_and_market_id"

  create_table "pages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.string   "email"
    t.integer  "cell"
    t.string   "purpose"
    t.string   "industry"
    t.text     "body"
  end

  create_table "product_types", force: :cascade do |t|
    t.string   "product_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "product_types_products", id: false, force: :cascade do |t|
    t.integer "product_id",      null: false
    t.integer "product_type_id", null: false
  end

  add_index "product_types_products", ["product_id", "product_type_id"], name: "index_product_types_products_on_product_id_and_product_type_id"
  add_index "product_types_products", ["product_type_id", "product_id"], name: "index_product_types_products_on_product_type_id_and_product_id"

  create_table "products", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "series_name"
    t.integer  "brand_id"
  end

  add_index "products", ["brand_id"], name: "index_products_on_brand_id"

end

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

ActiveRecord::Schema.define(version: 20161102064248) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "all_seafood_stocks", force: :cascade do |t|
    t.integer  "stall_id"
    t.integer  "fish_id"
    t.integer  "volume"
    t.integer  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carts", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "stall_id"
    t.integer  "fish_id"
    t.integer  "qty"
    t.integer  "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "customers", force: :cascade do |t|
    t.integer  "user_profile_id"
    t.integer  "purchase_id"
    t.integer  "invoice_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "fish", force: :cascade do |t|
    t.string   "english"
    t.string   "malay"
    t.string   "chinese"
    t.text     "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.string   "purchase_id"
    t.string   "customer_id"
    t.string   "total"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "purchases", force: :cascade do |t|
    t.string   "invoice_id"
    t.string   "customer_id"
    t.string   "fish_id"
    t.string   "qty"
    t.string   "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "stalls", force: :cascade do |t|
    t.integer  "user_profile_id"
    t.string   "name"
    t.string   "owner"
    t.string   "credibility"
    t.string   "quality"
    t.integer  "qtyUploaded"
    t.integer  "qtySold"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "user_classes", force: :cascade do |t|
    t.string   "user_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_profiles", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "firstName"
    t.string   "lastName"
    t.integer  "handphone"
    t.integer  "user_class_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end

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

ActiveRecord::Schema.define(version: 2019_10_27_173304) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "feedbacks", force: :cascade do |t|
    t.text "message"
    t.integer "user_id"
    t.integer "townhouse_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["townhouse_id"], name: "index_feedbacks_on_townhouse_id"
    t.index ["user_id"], name: "index_feedbacks_on_user_id"
  end

  create_table "grams", force: :cascade do |t|
    t.text "announcement"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_grams_on_user_id"
  end

  create_table "tenants", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.string "email"
    t.string "household"
    t.string "end_of_lease"
    t.string "emergency"
    t.integer "townhouse_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["townhouse_id"], name: "index_tenants_on_townhouse_id"
  end

  create_table "townhouses", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "primaryphone"
    t.string "secondaryphone"
    t.string "primaryemail"
    t.string "secondaryemail"
    t.string "emergency"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_townhouses_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end

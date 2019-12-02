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

ActiveRecord::Schema.define(version: 20191202205240) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adresses", force: :cascade do |t|
    t.string "street"
    t.string "town"
    t.string "postal_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "frauds", force: :cascade do |t|
    t.string "reson"
    t.string "authority"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "proposals", force: :cascade do |t|
    t.string "decision"
    t.string "loan_type"
    t.date "date"
    t.float "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "users_fk"
    t.integer "frauds_fk"
    t.integer "staffs_fk"
  end

  create_table "staffs", force: :cascade do |t|
    t.string "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "pesel"
    t.string "login"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "mail_address_fk"
    t.integer "home_address_fk"
    t.integer "staffs_fk"
  end

  add_foreign_key "proposals", "frauds", column: "frauds_fk"
  add_foreign_key "proposals", "staffs", column: "staffs_fk"
  add_foreign_key "proposals", "users", column: "users_fk"
  add_foreign_key "users", "adresses", column: "home_address_fk"
  add_foreign_key "users", "adresses", column: "mail_address_fk"
  add_foreign_key "users", "staffs", column: "staffs_fk"
end

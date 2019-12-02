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

ActiveRecord::Schema.define(version: 20191202180547) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adresy", force: :cascade do |t|
    t.string "ulica"
    t.string "miasto"
    t.string "kod_pocztowy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "{:foreign_key=>\"fk_adres_zamieszkania\"}_id"
    t.bigint "{:foreign_key=>\"fk_adres_zameldowania\"}_id"
    t.index ["{:foreign_key=>\"fk_adres_zameldowania\"}_id"], name: "index_adresy_on_{:foreign_key=>\"fk_adres_zameldowania\"}_id"
    t.index ["{:foreign_key=>\"fk_adres_zamieszkania\"}_id"], name: "index_adresy_on_{:foreign_key=>\"fk_adres_zamieszkania\"}_id"
  end

  create_table "pracownicy", force: :cascade do |t|
    t.string "stanowisko"
  end

  create_table "uzytkownicy", force: :cascade do |t|
    t.string "imie"
    t.string "nazwisko"
    t.string "pesel"
    t.string "login"
    t.string "haslo"
    t.integer "fk_adres_zamieszkania"
    t.integer "fk_adres_zameldowania"
    t.integer "fk_pracownicy"
  end

  create_table "wnioski", force: :cascade do |t|
    t.string "decyzja"
    t.string "typ_kredytu"
    t.date "data"
    t.float "kwota"
    t.integer "fk_uzytkownicy"
    t.integer "fk_pracownicy"
    t.integer "fk_zgloszenia"
  end

  create_table "zgloszenia", force: :cascade do |t|
    t.string "powod"
    t.string "organ_scigania"
  end

end

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

ActiveRecord::Schema.define(version: 2020_12_24_083226) do

  create_table "nutriologos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.string "cedula"
    t.string "login"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  create_table "pacientes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.string "domicilio"
    t.string "civil"
    t.string "nss"
    t.integer "edad"
    t.float "peso"
    t.float "talla"
    t.float "imc"
    t.string "t_sangre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "personas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.string "nombre"
    t.string "paterno"
    t.string "materno"
    t.string "sexo", limit: 2
    t.string "telefono"
    t.string "correo"
    t.string "perstable_type"
    t.bigint "perstable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["perstable_type", "perstable_id"], name: "index_personas_on_perstable_type_and_perstable_id"
  end

end

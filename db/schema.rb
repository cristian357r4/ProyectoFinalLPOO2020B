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

ActiveRecord::Schema.define(version: 2021_01_10_114949) do

  create_table "active_storage_attachments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "actividades", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.bigint "paciente_id"
    t.string "deporte", limit: 100
    t.string "descripcion"
    t.string "frecuencia"
    t.integer "duracion"
    t.string "tiempo_practica"
    t.string "grupo_solitario"
    t.string "equipo_amateur"
    t.string "gym"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["paciente_id"], name: "fk_rails_ff0d8c5d9d"
  end

  create_table "alimentos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.string "nombre"
    t.string "grupo_alimenticio"
    t.string "subgrupo_alimenticio"
    t.string "carcateristicas"
    t.integer "frecuencia"
    t.string "racionexporcion"
    t.string "mxcasera"
    t.string "nutrientes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "antecedentes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.bigint "paciente_id"
    t.integer "diabetes"
    t.integer "obesidad"
    t.integer "htrigli"
    t.integer "hcolesterol"
    t.integer "cancer"
    t.integer "hipertension"
    t.integer "gota"
    t.string "otro"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["paciente_id"], name: "index_antecedentes_on_paciente_id", unique: true
  end

  create_table "biometrias", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.bigint "paciente_id"
    t.float "globulos_rojos"
    t.float "globulos_blancos"
    t.float "plaquetas"
    t.float "hemoglobina"
    t.float "hematocritos"
    t.float "neutrofilos"
    t.float "monocitos"
    t.float "linfocitos"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["paciente_id"], name: "fk_rails_abbb9af78b"
  end

  create_table "consultas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.bigint "nutriologo_id"
    t.bigint "paciente_id"
    t.bigint "signo_id"
    t.bigint "problema_id"
    t.string "anotaciones"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nutriologo_id"], name: "fk_rails_16d43c96ef"
    t.index ["paciente_id"], name: "fk_rails_f9df072331"
    t.index ["problema_id"], name: "fk_rails_c07ffc045f"
    t.index ["signo_id"], name: "fk_rails_8aa92350d9"
  end

  create_table "dietas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.bigint "paciente_id"
    t.bigint "alimento_id"
    t.string "comida", limit: 30
    t.integer "cantidad"
    t.integer "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alimento_id"], name: "fk_rails_e8090303af"
    t.index ["paciente_id"], name: "fk_rails_b9f587d0ff"
  end

  create_table "habitos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.bigint "paciente_id"
    t.integer "tabaco"
    t.integer "alcohol"
    t.string "otros", limit: 50
    t.integer "preferida"
    t.integer "tiempo_consumo"
    t.integer "average_dream"
    t.integer "cantidad_agua"
    t.integer "numero_comidas"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["paciente_id"], name: "fk_rails_214cbc1f65"
  end

  create_table "nutriologos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.string "cedula"
    t.string "login"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.bigint "nutriologo_id"
    t.index ["nutriologo_id"], name: "fk_rails_1721da2f91"
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

  create_table "plansuplementos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.bigint "paciente_id"
    t.bigint "suplemento_id"
    t.integer "frecuencia"
    t.string "cantidad"
    t.datetime "inicio"
    t.datetime "fin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["paciente_id"], name: "fk_rails_d24e75bcba"
    t.index ["suplemento_id"], name: "fk_rails_efc7d13909"
  end

  create_table "problemas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.boolean "diarrea"
    t.boolean "nauseas"
    t.boolean "obesidad"
    t.boolean "estrenimiento"
    t.boolean "gastritis"
    t.boolean "vomito"
    t.boolean "insomnio"
    t.boolean "ansiedad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quimicas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.bigint "paciente_id"
    t.float "nitrogenourea"
    t.float "glucosa"
    t.float "creatina"
    t.float "acido_urico"
    t.float "trigliceridos"
    t.float "colesterol"
    t.float "bilirrubina"
    t.float "dhl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["paciente_id"], name: "fk_rails_dc264a5f49"
  end

  create_table "signos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.integer "cabello"
    t.integer "piel"
    t.integer "nails"
    t.integer "ojos"
    t.float "peso_corporal"
    t.float "presion_sanguinea"
    t.float "frecuencia_respiratoria"
    t.float "frecuencia_cardiaca"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suplementos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.string "nombre"
    t.string "marca"
    t.string "formato"
    t.string "peso_producto"
    t.integer "no_servicios"
    t.float "precio"
    t.text "contenido"
    t.text "informacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "actividades", "pacientes"
  add_foreign_key "antecedentes", "pacientes"
  add_foreign_key "biometrias", "pacientes"
  add_foreign_key "consultas", "nutriologos"
  add_foreign_key "consultas", "pacientes"
  add_foreign_key "consultas", "problemas"
  add_foreign_key "consultas", "signos"
  add_foreign_key "dietas", "alimentos"
  add_foreign_key "dietas", "pacientes"
  add_foreign_key "habitos", "pacientes"
  add_foreign_key "pacientes", "nutriologos"
  add_foreign_key "plansuplementos", "pacientes"
  add_foreign_key "plansuplementos", "suplementos"
  add_foreign_key "quimicas", "pacientes"
end

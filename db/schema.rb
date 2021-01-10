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

ActiveRecord::Schema.define(version: 2020_12_29_231401) do

  create_table "actividades", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.bigint "paciente_id"
    t.integer "deporte"
    t.string "descripcion"
    t.string "frecuencia"
    t.integer "duracion"
    t.string "tiempo_practica"
    t.string "grupo_solitario"
    t.string "equipo_amateur"
    t.string "gym"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["paciente_id"], name: "index_actividades_on_paciente_id", unique: false
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
    t.index ["paciente_id"], name: "index_biometrias_on_paciente_id", unique: true
  end

  create_table "consultas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.bigint "nutriologo_id"
    t.bigint "paciente_id"
    t.bigint "signo_id"
    t.bigint "problema_id"
    t.string "anotaciones"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nutriologo_id"], name: "index_consultas_on_nutriologo_id", unique: true
    t.index ["paciente_id"], name: "index_consultas_on_paciente_id", unique: true
    t.index ["problema_id"], name: "index_consultas_on_problema_id", unique: true
    t.index ["signo_id"], name: "index_consultas_on_signo_id", unique: true
  end

  create_table "dietas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.bigint "paciente_id"
    t.bigint "alimento_id"
    t.integer "comida"
    t.integer "cantidad"
    t.integer "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alimento_id"], name: "index_dietas_on_alimento_id", unique: true
    t.index ["paciente_id"], name: "index_dietas_on_paciente_id", unique: true
  end

  create_table "habitos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.bigint "paciente_id"
    t.integer "tabaco"
    t.integer "alcohol"
    t.string "otros"
    t.string "preferida"
    t.integer "tiempo_consumo"
    t.integer "average_dream"
    t.integer "cantidad_agua"
    t.integer "numero_comidas"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["paciente_id"], name: "index_habitos_on_paciente_id", unique: true
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
    t.date "inicio"
    t.date "fin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["paciente_id"], name: "index_plansuplementos_on_paciente_id", unique: true
    t.index ["suplemento_id"], name: "index_plansuplementos_on_suplemento_id", unique: true
  end
  #cuestionario sera tipo 1 aveces 2 de ves en cuando etc.....
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

  create_table "pruebas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci", force: :cascade do |t|
    t.string "capo1"
    t.string "campo2"
    t.string "campo3"
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
    t.index ["paciente_id"], name: "index_quimicas_on_paciente_id", unique: true
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

class CreateActividadFisica < ActiveRecord::Migration[5.2]
  def change
    create_table :actividades do |t|
      t.belongs_to :paciente, index: { unique: true}, foreign_key: true
      t.integer :deporte
      t.string :descripcion
      t.string :frecuencia
      t.float :duracion
      t.string :tiempo_practica
      t.string :grupo_solitario
      t.string :equipo_amateur
      t.string :gym

      t.timestamps
    end
#hipertrigliceridemia -> htrigli
#hipercolesterolemia -> hcolesterol
    create_table :antecedentes do |t|
      t.belongs_to :paciente, index: { unique: true}, foreign_key: true
      t.integer :diabetes
      t.integer :obesidad
      t.integer :htrigli
      t.integer :hcolesterol
      t.integer :cancer
      t.integer :hipertension
      t.integer :gota
      t.string :otro

      t.timestamps
    end

    create_table :biometrias do |t|
      t.belongs_to :paciente, index: { unique: true}, foreign_key: true
      t.float :globulos_rojos
      t.float :globulos_blancos
      t.float :plaquetas
      t.float :hemoglobina
      t.float :hematocritos
      t.float :neutrofilos
      t.float :monocitos
      t.float :linfocitos

      t.timestamps
    end

    create_table :quimicas do |t|
      t.belongs_to :paciente, index: { unique: true}, foreign_key: true
      t.float :nitrogenourea
      t.float :glucosa
      t.float :creatina
      t.float :acido_urico
      t.float :trigliceridos
      t.float :colsesterol
      t.float :bilirrubina
      t.float :dhl

      t.timestamps
    end

    create_table :habitos do |t|
      t.belongs_to :paciente, index: { unique: true }, foreign_key: true
      t.integer :tabaco
      t.integer :alcohol
      t.string :otros
      t.integer :a_frecuencia
      t.integer :tiempo_consumo
      t.integer :promedio_h_dream
      t.integer :cantidad_agua
      t.integer :numero_comidas

      t.timestamps
    end
#formato polvo
    create_table :suplementos do |t|
      t.string :nombre
      t.string :marca
      t.string :formato
      t.string :peso_producto
      t.integer :no_servicios
      t.float :precio
      t.text :contenido
      t.text :informacion

      t.timestamps
    end


  end
end

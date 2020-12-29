class CreateSuplementPlan < ActiveRecord::Migration[5.2]
  def change
    create_table :plansuplementos do |t|
      t.belongs_to :paciente, index: { unique: true }, foreign_key: true
      t.belongs_to :suplemento, index: { unique: true }, foreign_key: true
      t.integer :frecuencia
      t.string :cantidad
      t.date :inicio
      t.date :fin

      t.timestamps
    end
    
    create_table :signos do |t|
      t.integer :cabello
      t.integer :piel
      t.integer :nails
      t.integer :ojos
      t.float :peso_corporal
      t.float :presion_sanguinea
      t.float :frecuencia_respiratoria
      t.float :frecuencia_cardiaca

      t.timestamps
    end

    create_table :problemas do |t|
      t.boolean :diarrea
      t.boolean :nauseas
      t.boolean :obesidad
      t.boolean :estrenimiento
      t.boolean :gastritis
      t.boolean :vomito
      t.boolean :insomnio
      t.boolean :ansiedad

      t.timestamps
    end

    create_table :consultas do |t|
      t.belongs_to :nutriologo, index: { unique: true}, foreign_key: true
      t.belongs_to :paciente, index: { unique: true}, foreign_key: true
      t.belongs_to :signo , index: { unique: true}, foreign_key: true
      t.belongs_to :problema, index: { unique: true}, foreign_key: true
      t.string :anotaciones

      t.timestamps
    end

    create_table :alimentos do |t|
      t.string :nombre
      t.string :grupo_alimenticio
      t.string :subgrupo_alimenticio
      t.string :carcateristicas
      t.integer :frecuencia      
      t.string :racionexporcion
      t.string :mxcasera
      t.string :nutrientes

      t.timestamps
    end

    create_table :dietas do |t|
      t.belongs_to :paciente, index: { unique: true}, foreign_key: true
      t.belongs_to :alimento, index: { unique: true}, foreign_key: true
      t.integer :comida
      t.integer  :cantidad
      t.integer :estado

      t.timestamps
    end
  end
end

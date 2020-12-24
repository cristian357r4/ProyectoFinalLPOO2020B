class CreatePersona < ActiveRecord::Migration[5.2]
  def change
    create_table :personas do |t|
      t.string :nombre
      t.string :paterno
      t.string :materno
      t.string :sexo, limit: 2
      t.string :telefono
      t.string :correo

      t.timestamps
    end

  end
end

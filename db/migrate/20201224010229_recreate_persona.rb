class RecreatePersona < ActiveRecord::Migration[5.2]
  def change
    create_table :personas do |t|
      t.string :nombre
      t.string :paterno
      t.string :materno
      t.string :sexo, limit: 2
      t.string :telefono
      t.string :correo
      t.references :perstable, polymorphic: true, index: true

      t.timestamps
    end
  end
end

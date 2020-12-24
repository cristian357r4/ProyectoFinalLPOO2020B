class CreatePaciente < ActiveRecord::Migration[5.2]
  def change
    create_table :pacientes do |t|
      t.string :domicilio
      t.string :civil
      t.string :nss
      t.integer :edad
      t.float :peso
      t.float :talla
      t.float :imc
      t.string :t_sangre

      t.timestamps

    end
  end
end

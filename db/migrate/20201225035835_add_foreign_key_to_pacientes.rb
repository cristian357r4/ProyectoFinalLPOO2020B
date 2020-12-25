class AddForeignKeyToPacientes < ActiveRecord::Migration[5.2]
  def change
    add_column :pacientes, :nutriologo_id, :bigint
    add_foreign_key :pacientes, :nutriologos
  end
end

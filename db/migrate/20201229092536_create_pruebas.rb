class CreatePruebas < ActiveRecord::Migration[5.2]
  def change
    create_table :pruebas do |t|
      t.string :primer
      t.string :segundo
      t.string :tercer

      t.timestamps
    end
  end
end

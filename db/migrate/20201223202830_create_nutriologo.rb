class CreateNutriologo < ActiveRecord::Migration[5.2]
  def change
    create_table :nutriologos do |t|
      t.string :cedula, limit: 15
      t.string :login

      t.timestamps
    end
  end
end

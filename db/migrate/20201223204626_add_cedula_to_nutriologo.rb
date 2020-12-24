class AddCedulaToNutriologo < ActiveRecord::Migration[5.2]
  def change
    add_column :nutriologos, :created_at, :datetime, null: false
    add_column :nutriologos, :updated_at, :datetime, null: false

  end
end

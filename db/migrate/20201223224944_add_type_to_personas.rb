class AddTypeToPersonas < ActiveRecord::Migration[5.2]
  def change
    add_column :personas, :type, :string, null: false
  end
end

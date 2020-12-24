class AddReferencesToPersona < ActiveRecord::Migration[5.2]
  def change
    drop_table :personas
  end
end

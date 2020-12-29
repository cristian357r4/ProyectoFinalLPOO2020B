class CreateTests < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|
      t.string :campo1
      t.string :campo2

      t.timestamps
    end
  end
end

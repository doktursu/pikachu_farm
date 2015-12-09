class CreatePikachus < ActiveRecord::Migration
  def change
    create_table :pikachus do |t|
      t.string :name
      t.string :color
      t.text :type
      t.integer :size

      t.timestamps null: false
    end
  end
end

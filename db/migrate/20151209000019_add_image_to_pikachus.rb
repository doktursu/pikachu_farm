class AddImageToPikachus < ActiveRecord::Migration
  def change
    add_column :pikachus, :image, :text
  end
end

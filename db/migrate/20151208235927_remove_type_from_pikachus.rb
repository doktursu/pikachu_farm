class RemoveTypeFromPikachus < ActiveRecord::Migration
  def change
    remove_column :pikachus, :type, :text
  end
end

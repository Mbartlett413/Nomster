class AlterPlacesAddUserIdColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :places, :user_id, :interger 
    add_index :places, :user_id
  end
end

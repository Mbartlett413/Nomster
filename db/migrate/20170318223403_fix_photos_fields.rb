class FixPhotosFields < ActiveRecord::Migration[5.0]
  def change
    remove_column :photos, :picture
    add_column :photos, :picture, :string
  end
end

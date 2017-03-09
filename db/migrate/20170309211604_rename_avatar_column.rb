class RenameAvatarColumn < ActiveRecord::Migration[5.0]
  def change_table :photos do |t|
      t.rename :avatar, :picture
  end
end

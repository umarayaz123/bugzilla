class M1 < ActiveRecord::Migration
  def up
    add_column :pictures, :photos, :text
  end

  def down
    remove_column :pictures, :photos
  end
end

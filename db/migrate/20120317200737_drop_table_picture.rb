class DropTablePicture < ActiveRecord::Migration
 def self.up
    drop_table :pictures
  end

  def self.down
    create_table :pictures 
  end
end

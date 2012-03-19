class ChangeInAttributeName < ActiveRecord::Migration
  def up
    remove_column :bugs, :type
    add_column :bugs , :type_bug , :string
  end

  def down
    add_column :bugs, :type, :string
    remove_column :bugs , :type_bug
  end
end

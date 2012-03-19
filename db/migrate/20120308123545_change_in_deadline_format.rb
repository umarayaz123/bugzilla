class ChangeInDeadlineFormat < ActiveRecord::Migration
  def up
    change_column :bugs, :deadline, :date
  end

  def down
    change_column :bugs, :deadline, :string
  end
end

class CreateBugs < ActiveRecord::Migration
  def change
    create_table :bugs do |t|
      t.string :title
      t.string :deadline
      t.string :screen_shot
      t.string :type
      t.string :status
      t.string :project_id
      t.string :user_id

      t.timestamps
    end
  end
end

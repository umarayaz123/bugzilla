class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :user_report
      t.string :desc_project
      

      t.timestamps
    end
  end
end

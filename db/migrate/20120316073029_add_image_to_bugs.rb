class AddImageToBugs < ActiveRecord::Migration
  def change
    add_column :bugs, :image, :string

  end
end

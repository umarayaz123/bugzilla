class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.references :photoable, :polymorphic => true
      t.string :image

      t.timestamps
    end
    add_index :photos, :photoable_id
  end
end

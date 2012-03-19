class SorceryCore < ActiveRecord::Migration
  def self.up
    drop_table :users
    create_table :users do |t|
      t.string :name,         :null => false  # if you use another field as a username, for example email, you can safely remove this field.
      t.string :email,            :default => nil # if you use this field as a username, you might want to make it :null => false.
      t.string :crypted_password, :default => nil
      t.string :salt,             :default => nil

      t.timestamps
    end
  end

  def self.down
    drop_table :users
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :user_type
      t.string :project_id

      t.timestamps
    end 
  end
end
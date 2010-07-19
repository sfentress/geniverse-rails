class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username
      t.string :password_hash
      t.timestamps
    end
    
    add_index :users, [:username, :password_hash]
  end

  def self.down
    remove_index :users, :column_name
    drop_table :users
  end
end

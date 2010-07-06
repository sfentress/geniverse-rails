class AddTitleToActivities < ActiveRecord::Migration
  def self.up
    add_column :activities, :title, :string
  end

  def self.down
    remove_column :activities, :title
  end
end

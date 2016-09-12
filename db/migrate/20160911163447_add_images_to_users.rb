class AddImagesToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :images
    end
  end

  def self.down
    drop_attached_file :users, :images
  end
end

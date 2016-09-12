class AddAttachmentImageToStartups < ActiveRecord::Migration
  def self.up
    change_table :startups do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :startups, :image
  end
end

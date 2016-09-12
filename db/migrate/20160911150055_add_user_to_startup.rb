class AddUserToStartup < ActiveRecord::Migration
  def change
    add_reference :startups, :user, index: true
    add_foreign_key :startups, :users
  end
end

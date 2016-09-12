class CreateApllications < ActiveRecord::Migration
  def change
    create_table :apllications do |t|

      t.timestamps null: false
    end
  end
end

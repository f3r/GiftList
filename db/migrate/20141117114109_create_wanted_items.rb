class CreateWantedItems < ActiveRecord::Migration
  def change
    create_table :wanted_items do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end

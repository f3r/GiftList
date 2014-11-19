class CreateWantedItems < ActiveRecord::Migration
  def change
    create_table :wanted_items do |t|
      t.integer :user_id
      t.integer :list_id
      t.integer :item_id

      t.timestamps
    end
  end
end

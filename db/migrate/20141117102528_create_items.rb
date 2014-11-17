class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :image
      t.float :price
      t.text :description
      t.string :category
      t.integer :rating

      t.timestamps
    end
  end
end

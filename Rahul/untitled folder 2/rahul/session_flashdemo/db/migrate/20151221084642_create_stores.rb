class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :item_name
      t.float :price

      t.timestamps
    end
  end
end

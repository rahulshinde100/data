class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :company_name
      t.string :product_name
      t.string :available_quantity
      t.float :price
      t.integer :sku
      t.string :city
      t.string :state
      t.integer :postal_code

      t.timestamps
    end
  end
end

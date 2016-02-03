class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :tracking_no
      t.string :full_name
      t.integer :quantity
      t.float :amount
      t.string :email
      t.integer :mobno
      t.string :city
      t.string :state
      t.integer :postal_code
      t.belongs_to :product , index: true
      t.timestamps
    end
    
  end
end

class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :address
      t.float :amount
      t.timestamps
    end
  end
end

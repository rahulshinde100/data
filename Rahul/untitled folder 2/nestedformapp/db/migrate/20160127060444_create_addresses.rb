class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :village
      t.string :district
      t.integer :pincode
      t.references :student, index: true

      t.timestamps
    end
  end
end

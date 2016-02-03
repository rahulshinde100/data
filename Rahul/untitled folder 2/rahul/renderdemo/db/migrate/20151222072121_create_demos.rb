class CreateDemos < ActiveRecord::Migration
  def change
    create_table :demos do |t|
      t.integer :num

      t.timestamps
    end
  end
end

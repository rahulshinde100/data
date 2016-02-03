class CreateImagedemos < ActiveRecord::Migration
  def change
    create_table :imagedemos do |t|
      t.string :fname
      t.string :lname

      t.timestamps
    end
  end
end

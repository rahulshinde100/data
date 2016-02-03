class AddColumnToPost < ActiveRecord::Migration
  def change
  	add_column :posts, :user_id, :integer 
  end
  def down
    change_table :posts do |t|
      t.remove :user_id
  end
    end
end

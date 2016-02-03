class AddColumnToComments < ActiveRecord::Migration
  def change
  	add_column :comments, :user_id, :integer 
  	
  end
  def down
    change_table :comments do |t|
      t.remove :user_id
  end
    end
end

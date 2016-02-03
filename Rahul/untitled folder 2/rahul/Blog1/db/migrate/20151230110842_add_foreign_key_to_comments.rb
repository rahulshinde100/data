class AddForeignKeyToComments < ActiveRecord::Migration
  def change
  	 add_foreign_key :comments, :user_id
  	end
end

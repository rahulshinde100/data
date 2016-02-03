class AddUserToSomeSignupField < ActiveRecord::Migration
  def change
  	add_column :users, :fname, :string
    add_column :users, :lname, :string
    add_column :users, :birthdate, :date
    add_column :users, :gender, :string
    add_column :users, :country, :string
  end
end

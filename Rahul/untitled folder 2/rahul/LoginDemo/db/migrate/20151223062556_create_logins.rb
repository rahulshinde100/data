class CreateLogins < ActiveRecord::Migration
  def change
    create_table :logins do |t|
      t.string :username
      t.string :password
      t.string :confirmpassword

      t.timestamps
    end
  end
end

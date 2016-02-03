class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :sname
      t.string :classs
      t.integer :age
      t.string :city

      t.timestamps
    end
  end
end

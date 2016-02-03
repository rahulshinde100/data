class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :sname
      t.string :age
      t.string :class
      t.string :city

      t.timestamps
    end
  end
end

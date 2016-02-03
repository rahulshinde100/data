class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :std
      t.belongs_to :department , index: true
	  t.belongs_to :course , index: true

      t.timestamps
    end
  end
end

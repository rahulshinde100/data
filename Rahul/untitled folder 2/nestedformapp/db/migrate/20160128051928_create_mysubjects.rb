class CreateMysubjects < ActiveRecord::Migration
  def change
    create_table :mysubjects do |t|
      t.string :my_subjects

      t.timestamps
    end
  end
end

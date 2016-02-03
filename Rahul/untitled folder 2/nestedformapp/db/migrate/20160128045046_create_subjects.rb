class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.text :all_subjects
      t.references :student, index: true

      t.timestamps
    end
  end
end

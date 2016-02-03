class CreateRecipe1s < ActiveRecord::Migration
  def change
    create_table :recipe1s do |t|
      t.string :title
      t.text :instruction

      t.timestamps
    end
  end
end

class CreateArticles123s < ActiveRecord::Migration
  def change
    create_table :articles123s do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end

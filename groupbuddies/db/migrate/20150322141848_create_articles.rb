class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :author
      t.string :date
      t.text :body
      t.string :icon

      t.timestamps null: false
    end
  end
end

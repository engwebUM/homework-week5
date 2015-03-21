class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.date :date
      t.references :author, index: true

      t.timestamps null: false
    end
    add_foreign_key :articles, :authors
  end
end

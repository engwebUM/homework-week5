class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :post
      t.date :date
      t.references :author, index: true
      t.references :icon, index: true

      t.timestamps null: false
    end
    add_foreign_key :articles, :authors
    add_foreign_key :articles, :icons
  end
end

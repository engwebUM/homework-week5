class AddCategoryToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :category_id, :reference
    add_index :posts, :category_id
    add_foreign_key :posts, :categories
  end
end

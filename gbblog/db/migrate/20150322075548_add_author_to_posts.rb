class AddAuthorToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :author_id, :reference
    add_index :posts, :author_id
    add_foreign_key :posts, :authors
  end
end

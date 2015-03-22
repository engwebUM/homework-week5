class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :title
      t.string :title_icon
      t.string :author_first_name
      t.string :author_last_name
      t.text :about_author
      t.string :photo_author
      t.text :content
      t.string :date

      t.timestamps null: false
    end
  end
end

class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :author
      t.text :author_desc
      t.string :author_twitter
      t.string :author_photo
      t.string :post_title
      t.date :post_date
      t.text :post_text
      t.string :post_source

      t.timestamps null: false
    end
  end
end

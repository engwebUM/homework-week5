class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :time
      t.string :author
      t.text :body
      t.string :author_info
      t.string :author_img_link

      t.timestamps
    end
  end
end

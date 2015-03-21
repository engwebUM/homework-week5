class AddPhotoPathToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :photo_path, :string
  end
end

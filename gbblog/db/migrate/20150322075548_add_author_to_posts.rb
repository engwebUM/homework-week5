class AddAuthorToPosts < ActiveRecord::Migration
  def change
    add_reference :posts, :author, index:true, foreign_key: true
    # add_index :posts, :author
    # add_foreign_key :posts, :author
    #
    # add_reference :uploads, :user, index: true
  end
end

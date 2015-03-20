class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :about, :string
    add_column :users, :twitter, :string
  end
end

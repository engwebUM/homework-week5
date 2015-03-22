class Apaga < ActiveRecord::Migration
  def up
  	drop_table :posts
  	drop_table :authors
  	drop_table :post_types
  end
end

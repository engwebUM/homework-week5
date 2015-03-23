class CreateIcons < ActiveRecord::Migration
  def change
    create_table :icons do |t|
      t.string :image

      t.timestamps null: false
    end
  end
end

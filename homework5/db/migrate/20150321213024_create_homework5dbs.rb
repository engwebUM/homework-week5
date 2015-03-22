class CreateHomework5dbs < ActiveRecord::Migration
  def change
    create_table :homework5dbs do |t|
      t.string :title
      t.string :text
      t.string :author
      t.string :date

      t.timestamps null: false
    end
  end
end

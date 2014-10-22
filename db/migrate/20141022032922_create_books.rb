class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :isbn
      t.string :author
      t.date :intime
      t.float :price
      t.integer :status
      t.references :category, index: true

      t.timestamps
    end
  end
end

class CreateBorrowRecords < ActiveRecord::Migration
  def change
    create_table :borrow_records do |t|
      t.date :return_time
      t.date :out_time
      t.references :user, index: true
      t.references :book, index: true

      t.timestamps
    end
  end
end

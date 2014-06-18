class CreateOperationHistories < ActiveRecord::Migration
  def change
    create_table :operation_histories do |t|
      t.date :operation_date
      t.integer :train_numbers
      t.integer  :operation_numbers
      t.timestamps
    end
  end
end

class CreateOperationNumbers < ActiveRecord::Migration
  def change
    create_table :operation_numbers do |t|
      t.integer :operation_numbers
      t.integer :train_numbers
      t.timestamps
    end
  end
end

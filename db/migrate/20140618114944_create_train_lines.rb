class CreateTrainLines < ActiveRecord::Migration
  def change
    create_table :train_lines do |t|
      t.integer :operation_numbers
      t.integer :train_lines
      t.string  :train_lines_name
      t.timestamps
    end
  end
end

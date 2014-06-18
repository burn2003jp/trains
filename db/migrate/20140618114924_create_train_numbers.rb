class CreateTrainNumbers < ActiveRecord::Migration
  def change
    create_table :train_numbers do |t|
      t.integer :train_lines
      t.integer :train_numbers
      t.timestamps
    end
  end
end

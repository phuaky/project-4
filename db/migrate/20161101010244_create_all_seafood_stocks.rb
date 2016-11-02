class CreateAllSeafoodStocks < ActiveRecord::Migration[5.0]
  def change
    create_table :all_seafood_stocks do |t|
      t.integer :stall_id
      t.integer :fish_id
      t.integer :volume
      t.integer :price

      t.timestamps
    end
  end
end

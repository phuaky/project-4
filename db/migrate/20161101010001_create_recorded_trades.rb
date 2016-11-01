class CreateRecordedTrades < ActiveRecord::Migration[5.0]
  def change
    create_table :recorded_trades do |t|
      t.integer :customer_id
      t.integer :stall_id
      t.integer :fish_id
      t.integer :sell_kg
      t.integer :price_dollarsPerKg
      t.integer :net_amt

      t.timestamps
    end
  end
end

class CreatePurchases < ActiveRecord::Migration[5.0]
  def change
    create_table :purchases do |t|
      t.string :invoice_id
      t.string :customer_id
      t.string :fish_id
      t.string :stall_id
      t.string :qty
      t.string :price

      t.timestamps
    end
  end
end

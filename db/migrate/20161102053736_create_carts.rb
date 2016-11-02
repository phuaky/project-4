class CreateCarts < ActiveRecord::Migration[5.0]
  def change
    create_table :carts do |t|
      t.integer :customer_id
      t.integer :stall_id
      t.integer :fish_id
      t.integer :qty
      t.integer :price

      t.timestamps
    end
  end
end

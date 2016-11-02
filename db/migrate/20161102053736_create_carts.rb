class CreateCarts < ActiveRecord::Migration[5.0]
  def change
    create_table :carts do |t|
      t.string :customer_id
      t.string :stall_id
      t.string :fish_id
      t.integer :qty
      t.integer :price

      t.timestamps
    end
  end
end

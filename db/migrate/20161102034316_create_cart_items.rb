class CreateCartItems < ActiveRecord::Migration[5.0]
  def change
    create_table :cart_items do |t|
      t.string :stall_id
      t.string :customer_id
      t.string :fish_id
      t.string :quantity

      t.timestamps
    end
  end
end

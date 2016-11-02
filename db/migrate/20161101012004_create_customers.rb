class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.integer :user_profile_id
      t.integer :fish_id
      t.integer :qty
      t.integer :price
      t.integer :net_amt

      t.timestamps
    end
  end
end

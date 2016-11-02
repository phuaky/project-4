class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.integer :user_profile_id

      t.timestamps
    end
  end
end

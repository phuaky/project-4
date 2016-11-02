class CreateStalls < ActiveRecord::Migration[5.0]
  def change
    create_table :stalls do |t|
      t.integer :user_profile_id
      t.string :name
      t.string :owner
      t.string :credibility
      t.string :quality
      t.integer :qtyUploaded
      t.integer :qtySold

      t.timestamps
    end
  end
end

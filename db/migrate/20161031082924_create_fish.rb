class CreateFish < ActiveRecord::Migration[5.0]
  def change
    create_table :fish do |t|
      t.string :english
      t.string :malay
      t.string :chinese
      t.text :image

      t.timestamps
    end
  end
end

class CreateUserProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :user_profiles do |t|
      t.string :email
      t.string :password_digest
      t.string :firstName
      t.string :lastName
      t.integer :handphone

      t.timestamps
    end
  end
end

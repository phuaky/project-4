class CreateUserClasses < ActiveRecord::Migration[5.0]
  def change
    create_table :user_classes do |t|
      t.string :user_type

      t.timestamps
    end
  end
end

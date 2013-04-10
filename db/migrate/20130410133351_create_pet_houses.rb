class CreatePetHouses < ActiveRecord::Migration
  def change
    create_table :pet_houses do |t|
      t.string :address
      t.text :desc
      t.integer :price
      t.integer :user_id

      t.timestamps
    end
  end
end

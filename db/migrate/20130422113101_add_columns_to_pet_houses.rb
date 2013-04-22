class AddColumnsToPetHouses < ActiveRecord::Migration
  def change
    add_column :pet_houses, :no_of_pets, :integer
    add_column :pet_houses, :size, :string
    add_column :pet_houses, :overnight, :boolean
  end
end

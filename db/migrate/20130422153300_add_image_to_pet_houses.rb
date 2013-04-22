class AddImageToPetHouses < ActiveRecord::Migration
  def change
    add_column :pet_houses, :image, :string
  end
end

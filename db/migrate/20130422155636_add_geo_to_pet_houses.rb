class AddGeoToPetHouses < ActiveRecord::Migration
  def change
    add_column :pet_houses, :latitude, :float
    add_column :pet_houses, :longitude, :float
  end
end

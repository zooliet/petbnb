class AddGeoToPetHouses < ActiveRecord::Migration
  def change
    add_column :pet_houses, :longitude, :float
    add_column :pet_houses, :latitude, :float
  end
end

class AddTitleToPetHouses < ActiveRecord::Migration
  def change
    add_column :pet_houses, :title, :string
  end
end

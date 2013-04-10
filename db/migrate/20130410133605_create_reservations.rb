class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :to_date
      t.datetime :from_date
      t.integer :customer_id
      t.integer :pet_house_id

      t.timestamps
    end
  end
end

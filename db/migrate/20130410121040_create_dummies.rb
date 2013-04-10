class CreateDummies < ActiveRecord::Migration
  def change
    create_table :dummies do |t|
      t.string :name
      t.text :desc
      t.integer :priority

      t.timestamps
    end
  end
end

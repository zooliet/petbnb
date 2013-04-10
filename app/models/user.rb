class User < ActiveRecord::Base
  attr_accessible :email, :name, :phone, :profile
  
  has_many :pet_houses
  has_many :reservations, foreign_key: :customer_id
end

class Reservation < ActiveRecord::Base
  attr_accessible :customer_id, :from_date, :pet_house_id, :to_date
  
  belongs_to :pet_house
  belongs_to :customer, class_name: User
  

  def days
      (from_date.to_date .. to_date.to_date).to_a
  end 
  
end

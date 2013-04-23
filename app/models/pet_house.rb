#encoding: utf-8

class PetHouse < ActiveRecord::Base
  attr_accessible :address, :desc, :price, :user_id, :title, :no_of_pets, :size, :overnight
  
  belongs_to :user
  has_many :reservations
  
  validates_numericality_of :price
  validates_presence_of     :title, :address
  
  geocoded_by :address
  after_validation :geocode
  
  def self.search(opt)
    where("address ilike ?", "%#{opt[:search]}%")
  end
  
  def self.find_it(conditions = {})
    if conditions
      where("address ilike :address", address: "%#{conditions[:location]}%")
    else
      scoped
    end
  end
  
  def pets
    if no_of_pets == 1
      " 한 마리만 가능 "
    elsif no_of_pets == 2
      " 두마리 가능 "
    else
      "세마리 이상 가능 "
    end
  end
  

  
end

class PetHouse < ActiveRecord::Base
  attr_accessible :address, :desc, :price, :user_id
  
  belongs_to :user
  has_many :reservations
  
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
end

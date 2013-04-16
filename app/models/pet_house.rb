class PetHouse < ActiveRecord::Base
  attr_accessible :address, :desc, :price, :user_id
  
  belongs_to :user
  has_many :reservations
  
  def self.search(opt)
    where("address ilike ?", "%#{opt[:search]}%")
  end
  
end

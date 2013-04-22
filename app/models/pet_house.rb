# encoding: UTF-8
class PetHouse < ActiveRecord::Base
  attr_accessible :address, :desc, :price, :user_id, :title, :no_of_pets, :size, :overnight, :image
  
  belongs_to :user
  has_many :reservations
  
  validates_numericality_of :price, :message => "is not a number"
  
  mount_uploader :image, ImageUploader
  
  geocoded_by :address
	after_validation :geocode, if: lambda{ |obj| obj.address_changed? }
	  
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
    if no_of_pets == "1"
      " 한 마리만 가능 "
    elsif self.no_of_pets == 2
      " 두 마리까지 가능 "
    else
      " 세 마리도 가능 "      
    end
  end
end

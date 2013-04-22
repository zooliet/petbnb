# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.delete_all
PetHouse.delete_all
Reservation.delete_all

CITIES = %w(Seoul Inchoen Suwon Wonju Gangneung Daejeon Gwangju Jeonju Mokpo Daegu Ulsan Busan Jeju)
NAMES  = %w(Kim Lee Kang Shin Oh Lim Choi Park)
DESCRIPTION = %w(Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor 
  incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam quis nostrud exercitation 
  ullamco laboris nisi ut aliquip ex ea commodo consequat Duis aute irure dolor in reprehenderit 
  in voluptate velit esse cillum dolore eu fugiat nulla pariatur Excepteur sint occaecat cupidatat 
  non proident sunt in culpa qui officia deserunt mollit anim id est laborum)

puts "*** Creating User ***"

10.times do |i|
  User.create do |u|
    u.name  = NAMES[rand(NAMES.length-1)]
    u.email = "#{u.name.downcase}_#{i}@google.com"
    u.phone = "010-000-00#{i}"
  end
end

puts "*** Creating PetHouse ***"

4.times do |i|
  u = User.offset(i).first
  4.times do 
    u.pet_houses.build do |house|
      house.address = CITIES[rand(CITIES.length-1)]
      house.title = (3 + rand(7)).times.map { DESCRIPTION[rand(DESCRIPTION.length-1)] }.join(" ") + "."
      house.desc = (3 + rand(7)).times.map { DESCRIPTION[rand(DESCRIPTION.length-1)] }.join(" ") + "."
      house.price = 10000 + rand(20) * 5000
    end
    u.save
  end
end





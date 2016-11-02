# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create User Class
UserClass.find_or_create_by!(user_type: 'admin')
UserClass.find_or_create_by!(user_type: 'business')
UserClass.find_or_create_by!(user_type: 'customer')


# Create Admin
user = UserProfile.find_or_create_by!(email: 'admin@a.com') do |user|
  user.password = 'password'
  user.firstName = 'admin'
  user.lastName = 'Phua'
  user.handphone = 98765431
  user.user_class_id = 1
end

# Create Stall USER
user = UserProfile.find_or_create_by!(email: 'shop@a.com') do |user|
  user.password = 'password'
  user.firstName = 'Shop'
  user.lastName = 'Fish'
  user.handphone = 98765431
  user.user_class_id = 2
end

# Create Stall
user = Stall.find_or_create_by!(user_profile_id: 2) do |stall|
  stall.name = 'FISH SHOPPEE'
  stall.owner = 'SHOPPEE'
  stall.credibility = 10
  stall.quality = 10
  stall.qtyUploaded = 100
  stall.qtySold = 100
end

# Create Customer USER
user = UserProfile.find_or_create_by!(email: 'nick@rich.com') do |user|
  user.password = 'password'
  user.firstName = 'Nick'
  user.lastName = 'ImRich'
  user.handphone = 98765431
  user.user_class_id = 3
end

# Create all fishes
fish = Fish.find_or_create_by!(english: 'Dorab') do |fish|
  fish.malay = 'Parang 2'
  fish.chinese = '西刀'
  fish.image = 'Dorab_vh5u7i'
end
fish = Fish.find_or_create_by!(english: 'Threadfin') do |fish|
  fish.malay = 'Kurau'
  fish.chinese = '马鲅'
  fish.image = 'Threadfin_hnvkve'
end
fish = Fish.find_or_create_by!(english: 'Black Pomfret') do |fish|
  fish.malay = 'Bawal Hitam'
  fish.chinese = '黑鲳'
  fish.image = 'Black_Pomfret_sei0xw'
end
fish = Fish.find_or_create_by!(english: 'Lobster') do |fish|
  fish.malay = 'Udang Karang'
  fish.chinese = '龙虾'
  fish.image = 'Lobster_k30pc0'
end
fish = Fish.find_or_create_by!(english: 'Sea Bream') do |fish|
  fish.malay = 'Kerisi'
  fish.chinese = '红哥里'
  fish.image = 'Sea_Bream_cqjuxa'
end

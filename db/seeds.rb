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

# Create all fishes
fish = Fish.find_or_create_by!(english: 'Dorab') do |fish|
  fish.malay = 'Parang 2'
  fish.chinese = '西刀'
  fish.image = 'Dorab_vh5u7i'
end

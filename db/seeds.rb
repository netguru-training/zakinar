# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

%w(Sport Music Movie TV IT Social).each do |cat_name|
  Category.create!(name: cat_name)
end

UserCategory.create! user_id: 1 , category_id: 1
UserCategory.create! user_id: 1 , category_id: 3
UserCategory.create! user_id: 1 , category_id: 5










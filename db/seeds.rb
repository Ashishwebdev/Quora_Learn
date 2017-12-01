# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

topic_list = ["Personality Development","Business","Spirituality", "Relations","Clothing","Pollution","Robotics","Web Technology","Fitness"]
topic_list.each do |body|
  Topic.create body: body
end

99.times do |n|
  username = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(username: username,
               email: email,
               password:              password,
               password_confirmation: password,
               )
end

users = User.order(:created_at).take(6)

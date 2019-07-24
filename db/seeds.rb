# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


restaurants = %w(Haidilao Yifang B&B Xijia Macdonald)
category = %w(chinese italian japanese french belgian)



Restaurant.delete_all if Rails.env.development?

5.times do
  Restaurant.create!(name: Faker::Restaurant.name,
                     address: Faker::Address.city,
                     phone_number: Faker::PhoneNumber.phone_number,
                     category: category.sample)
end

puts "Created #{Restaurant.count} restaurants"

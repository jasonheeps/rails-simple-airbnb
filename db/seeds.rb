# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  Flat.create!(
    name: "#{%w[Beautiful Lovely Cosy].sample} #{%w[flat appartment place].sample} with a huge #{['swimming pond', 'garden', 'sauna'].sample}",
    address: Faker::Address.city,
    description: "with a #{Faker::House.furniture} in the #{Faker::House.room}",
    price_per_night: rand(17..85),
    number_of_guests: rand(1..6)
  )
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning DB'
Restaurant.destroy_all

cat_arr = %w[chinese italian japanese french belgian]
10.times do
  temp = Restaurant.create(
    {
      name: Faker::Creature::Animal.name,
      address: Faker::Address.street_address,
      category: cat_arr.sample
    }
  )
  5.times do
    Review.create({ rating: rand(6), content: Faker::Quote.yoda , restaurant: temp})
  end
end

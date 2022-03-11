# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 10000.times do
#   Story.create(user_id: 4,
#     title: Faker::Lorem.word,
#     body: Faker::Lorem.sentences)
# end

# 20000.times do
#   Story.create(user_id: 5,
#     title: Faker::Quote.singular_siegler,
#     body: Faker::Quote.matz)
# end

# 20000.times do
#   Story.create(user_id: 6,
#     title: Faker::TvShows::TheFreshPrinceOfBelAir.actor,
#     body: Faker::TvShows::TheFreshPrinceOfBelAir.quote)
# end

5000.times do
  Review.create(
    user_id: 4,
    story_id: Faker::Number.unique.within(range: 1..50_000),
    rating: Faker::Number.within(range: 1..5),
    comment: Faker::Movies::HarryPotter.quote
  )
end

5000.times do
  Review.create(
    user_id: 4,
    story_id: Faker::Number.unique.within(range: 1..50_000),
    rating: Faker::Number.within(range: 1..5),
    comment: Faker::TvShows::Friends.quote
  )
end
5000.times do
  Review.create(
    user_id: 5,
    story_id: Faker::Number.unique.within(range: 1..50_000),
    rating: Faker::Number.within(range: 1..5),
    comment: Faker::TvShows::Simpsons.quote
  )
end
5000.times do
  Review.create(
    user_id: 6,
    story_id: Faker::Number.unique.within(range: 1..50_000),
    rating: Faker::Number.within(range: 1..5),
    comment: Faker::Quotes::Shakespeare.king_richard_iii_quote
  )
end

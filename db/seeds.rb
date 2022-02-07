# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

MemeCreatorListing.destroy_all
User.destroy_all


# 10.times do
#   MemeCreatorListing.create(creator_name: Faker::JapaneseMedia::DragonBall.character, photo: meme_controller_listings_urls.sample, description: Faker::JapaneseMedia::DragonBall.race, speciality: Faker::JapaneseMedia::DragonBall.planet, hourly_price: Faker::Number.between(from: 1, to: 50))
# end

User.create!(name:"Dave", email:"dave@sidgrove.com", password:"1234567")
User.create!(name:"Davo", email:"davo@sidgrovee.com", password:"1234567")
User.create!(name:"Davos", email:"davos@sidgrove.com", password:"1234567")

Booking.create()

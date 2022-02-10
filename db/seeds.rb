require "open-uri"

file = URI.open('https://res.cloudinary.com/dza6mn30y/image/upload/v1644368310/eggcellent_hugip3.jpg')
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

MemeCreatorListing.destroy_all
User.destroy_all

User.create!(name:"Dave", email:"dave@sidgrove.com", password:"1234567")
puts "created user"
User.create!(name:"Davo", email:"davo@sidgrovee.com", password:"1234567")
puts "created user"
User.create!(name:"Davos", email:"davos@sidgrove.com", password:"1234567")
puts "created user"

eggmeme=MemeCreatorListing.new(creator_name:"Eggmeister", speciality:"Egg Meme Specialist", user_id:25)
eggmeme.photo.attach(io: file, filename: "egg.png", content_type: 'image/jpg')
eggmeme.save!

catmeme=MemeCreatorListing.new(creator_name:"Meeyaaaw", speciality:"Cat Meme Specialist", user_id:25)
catmeme.photo.attach(io: file, filename: "cat.png", content_type: 'image/jpg')
catmeme.save!

borismeme=MemeCreatorListing.new(creator_name:"Bozza", speciality:"Boris Johnson Meme Specialist", user_id:25)
borismeme.photo.attach(io: file, filename: "boris.png", content_type: 'image/jpg')
borismeme.save!

djmeme=MemeCreatorListing.new(creator_name:"Deejay", speciality:"DJ Meme Specialist", user_id:25)
djmeme.photo.attach(io: file, filename: "dj.png", content_type: 'image/jpg')
djmeme.save!

dogmeme=MemeCreatorListing.new(creator_name:"Hugh Let the Dogs Out", speciality:"Dog Meme Specialist", user_id:25)
dogmeme.photo.attach(io: file, filename: "dog.png", content_type: 'image/jpg')
dogmeme.save!

codingmeme=MemeCreatorListing.new(creator_name:"Query Selecta Ta Ta", speciality:"Coding Meme Specialist", user_id:25)
codingmeme.photo.attach(io: file, filename: "coding.png", content_type: 'image/jpg')
codingmeme.save!

Booking.create()

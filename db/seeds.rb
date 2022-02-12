require "open-uri"

file1 = URI.open('https://res.cloudinary.com/dza6mn30y/image/upload/v1644368310/memes/eggcellent_hugip3.jpg')
file2 = URI.open('https://res.cloudinary.com/dza6mn30y/image/upload/v1644368312/memes/funny-cat_lcf7bz.jpg')
file3 = URI.open('https://res.cloudinary.com/dza6mn30y/image/upload/v1644368309/memes/boris-meme_cj2b9h.jpg')
file4 = URI.open('https://res.cloudinary.com/dza6mn30y/image/upload/v1644368305/memes/dj_vakvb8.jpg')
file5 = URI.open('https://res.cloudinary.com/dza6mn30y/image/upload/v1644368303/memes/dog-meme_w0qflb.png')
file6 = URI.open('https://res.cloudinary.com/dza6mn30y/image/upload/v1644368306/memes/coding-1644357083_avsizn.png')
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

MemeCreatorListing.destroy_all
User.destroy_all

User.create!(name:"Dave", email:"dave@pushflo.com", password:"1234567")
puts "created user"
User.create!(name:"Kyri", email:"kyri@pufhflo.com", password:"7654321")
puts "created user"
User.create!(name:"Nelson", email:"nelson@pushflo.com", password:"1234567")
puts "created user"
User.create!(name:"Rahul", email:"rahul@pushflo.com", password:"1234567")
puts "created user"
User.create!(name:"Meehir", email:"meehir@pufhflo.com", password:"1234567")
puts "created user"
User.create!(name:"Zak", email:"zak@pushflo.com", password:"1234567")
puts "created user"

eggmeme=MemeCreatorListing.new(creator_name:"Eggmeister", speciality:"Egg Meme Specialist", user_id:1)
eggmeme.photo.attach(io: file1, filename: "egg.png", content_type: 'image/jpg')
eggmeme.save!

catmeme=MemeCreatorListing.new(creator_name:"Meeyaaaw", speciality:"Cat Meme Specialist", user_id:2)
catmeme.photo.attach(io: file2, filename: "cat.png", content_type: 'image/jpg')
catmeme.save!

borismeme=MemeCreatorListing.new(creator_name:"Bozza", speciality:"Boris Johnson Meme Specialist", user_id:3)
borismeme.photo.attach(io: file3, filename: "boris.png", content_type: 'image/jpg')
borismeme.save!

djmeme=MemeCreatorListing.new(creator_name:"Deejay", speciality:"DJ Meme Specialist", user_id:4)
djmeme.photo.attach(io: file4, filename: "dj.png", content_type: 'image/jpg')
djmeme.save!

dogmeme=MemeCreatorListing.new(creator_name:"Hugh Let the Dogs Out", speciality:"Dog Meme Specialist", user_id:5)
dogmeme.photo.attach(io: file5, filename: "dog.png", content_type: 'image/jpg')
dogmeme.save!

codingmeme=MemeCreatorListing.new(creator_name:"Query Selecta Ta Ta", speciality:"Coding Meme Specialist", user_id:6)
codingmeme.photo.attach(io: file6, filename: "coding.png", content_type: 'image/jpg')
codingmeme.save!

Booking.create()

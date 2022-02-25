# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Cleaning database

puts "Cleaning up database"
Session.destroy_all

Exercise.destroy_all
User.destroy_all
Challenge.destroy_all

puts "Database is clean"

# Users

puts "Creating 2 users"

john = User.create(
  first_name: "John",
  last_name: "Doe",
  email: "johndoe@lewagon.com",
  password: "123456",
  photo_url: "https://res.cloudinary.com/dbevdhp4h/image/upload/v1644664585/cwebster_avatar_qvqz9q.jpg"
)
puts "User #{john.id} is created"

sam = User.create(
  first_name: "Sam",
  last_name: "Smith",
  email: "samsmith@lewagon.com",
  password: "123456",
  photo_url: "https://res.cloudinary.com/dbevdhp4h/image/upload/v1644664580/1643305747745_bnkhak.jpg"
)
puts "User #{sam.id} is created"

puts "#{User.count} users have been created"

# Challenges

puts "Creating 3 challenges"

challenge_1 = Challenge.create(
  name: "Introducing yourself",
  description: "Very easy challenge",
  date: Time.now
)
puts "Challenge #{challenge_1.id} is created"

challenge_2 = Challenge.create(
  name: "Learning the basics",
  description: "Intermediate challenge",
  date: Time.now
)
puts "Challenge #{challenge_2.id} is created"

challenge_3 = Challenge.create(
  name: "Talking about your hobbies",
  description: "Advanced challenge",
  date: Time.now
)
puts "Challenge #{challenge_3.id} is created"

puts "All 3 challenges created!"

# Exercises

puts "Creating 6 exercises"

exercise_1 = Exercise.create(
    challenge_id: challenge_1.id,
    content_type: "video",
    content_url: "www",
    name: "Introductory video",
    description: "Today's topic"
  )
puts "Exercise #{exercise_1.id} is created"

exercise_2 = Exercise.create(
    challenge_id: challenge_1.id,
    content_type: "flashcards",
    content_url: "www",
    name: "Flashcards",
    description: "Today's vocabulary"
  )
puts "Exercise #{exercise_2.id} is created"

exercise_3 = Exercise.create(
    challenge_id: challenge_2.id,
    content_type: "video",
    content_url: "www",
    name: "Introductory video",
    description: "Today's topic"
  )
puts "Exercise #{exercise_3.id} is created"

exercise_4 = Exercise.create(
    challenge_id: challenge_2.id,
    content_type: "flashcards",
    content_url: "www",
    name: "Flashcards",
    description: "Today's vocabulary"
  )
puts "Exercise #{exercise_4.id} is created"

exercise_5 = Exercise.create(
    challenge_id: challenge_3.id,
    content_type: "video",
    content_url: "www",
    name: "Introductory video",
    description: "Today's topic"
  )
puts "Exercise #{exercise_5.id} is created"

exercise_6 = Exercise.create(
    challenge_id: challenge_3.id,
    content_type: "flashcards",
    content_url: "www",
    name: "Flashcards",
    description: "Today's vocabulary"
  )
puts "Exercise #{exercise_6.id} is created"

puts "All 6 exercises created!"

puts "All done!"

puts "#{User.count} users have been created"
puts "#{Challenge.count} challenges have been created"
puts "#{Exercise.count} exercises have been created"

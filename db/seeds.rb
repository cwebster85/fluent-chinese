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
  name: "Unit 1: Saying One's Name and Age",
  description: "In this unit you will learn:
  - How to say your name and age
  - How to say someone else's name and age
  - How to count from 0-99
  - A range of common Chinese names
  - Words for siblings

  ",
  date: Date.today
)
puts "Challenge #{challenge_1.id} is created"

challenge_2 = Challenge.create(
  name: "Unit 2: Saying when your birthday is",
  description: "In this unit you will learn:
  - How to say where you and another person (e.g. a friend) are from
  - When your birthday is
  - Months
  - I am/he is/she is
  - Names of Chinese speaking locations
  - Two nationalities

  ",
  date: Date.today + 1
)
puts "Challenge #{challenge_2.id} is created"

challenge_3 = Challenge.create(
  name: "Unit 3: Describing hair and eyes",
  description: "In this unit you will learn:
  - To describe what a person's hair and eyes are like
  - Colours
  - Negation

  You will also revisit:

  - Pronouns
  - Numbers 0-100

  ",
  date: Date.today + 2
)
puts "Challenge #{challenge_3.id} is created"

puts "All 3 challenges created!"

# Exercises

puts "Creating 5 exercises"

exercise_1 = Exercise.create(
    challenge_id: challenge_1.id,
    content_type: "video",
    content_url: "www",
    name: "Video Lecture",
    description: "Introduction and Resources"
  )
puts "Exercise #{exercise_1.id} is created"

exercise_2 = Exercise.create(
    challenge_id: challenge_1.id,
    content_type: "vocabulary",
    content_url: "www.sentencebuilders.com",
    name: "Vocabulary Building",
    description: "Vocabulary Building"
  )
puts "Exercise #{exercise_2.id} is created"

exercise_3 = Exercise.create(
    challenge_id: challenge_1.id,
    content_type: "Reading",
    content_url: "www",
    name: "Reading",
    description: "Reading"
  )
puts "Exercise #{exercise_3.id} is created"

exercise_4 = Exercise.create(
    challenge_id: challenge_1.id,
    content_type: "Speaking",
    content_url: "www",
    name: "Speaking",
    description: "Speaking"
  )
puts "Exercise #{exercise_4.id} is created"

exercise_5 = Exercise.create(
    challenge_id: challenge_1.id,
    content_type: "Writing",
    content_url: "www",
    name: "Writing",
    description: "Wrtiting"
  )
puts "Exercise #{exercise_5.id} is created"

puts "All 5 exercises created for challenge 1!"

exercise_1 = Exercise.create(
    challenge_id: challenge_2.id,
    content_type: "video",
    content_url: "www",
    name: "Video Lecture",
    description: "Introduction and Resources"
  )
puts "Exercise #{exercise_1.id} is created"

exercise_2 = Exercise.create(
    challenge_id: challenge_2.id,
    content_type: "vocabulary",
    content_url: "www.sentencebuilders.com",
    name: "Vocabulary Building",
    description: "Vocabulary Building"
  )
puts "Exercise #{exercise_2.id} is created"

exercise_3 = Exercise.create(
    challenge_id: challenge_2.id,
    content_type: "Reading",
    content_url: "www",
    name: "Reading",
    description: "Reading"
  )
puts "Exercise #{exercise_3.id} is created"

exercise_4 = Exercise.create(
    challenge_id: challenge_2.id,
    content_type: "Speaking",
    content_url: "www",
    name: "Speaking",
    description: "Speaking"
  )
puts "Exercise #{exercise_4.id} is created"

exercise_5 = Exercise.create(
    challenge_id: challenge_2.id,
    content_type: "Writing",
    content_url: "www",
    name: "Writing",
    description: "Wrtiting"
  )
puts "Exercise #{exercise_2.id} is created"

puts "All 5 exercises created for challenge 2!"

exercise_1 = Exercise.create(
    challenge_id: challenge_3.id,
    content_type: "video",
    content_url: "www",
    name: "Video Lecture",
    description: "Introduction and Resources"
  )
puts "Exercise #{exercise_1.id} is created"

exercise_2 = Exercise.create(
    challenge_id: challenge_3.id,
    content_type: "vocabulary",
    content_url: "www.sentencebuilders.com",
    name: "Vocabulary Building",
    description: "Vocabulary Building"
  )
puts "Exercise #{exercise_2.id} is created"

exercise_3 = Exercise.create(
    challenge_id: challenge_3.id,
    content_type: "Reading",
    content_url: "www",
    name: "Reading",
    description: "Reading"
  )
puts "Exercise #{exercise_3.id} is created"

exercise_4 = Exercise.create(
    challenge_id: challenge_3.id,
    content_type: "Speaking",
    content_url: "www",
    name: "Speaking",
    description: "Speaking"
  )
puts "Exercise #{exercise_4.id} is created"

exercise_5 = Exercise.create(
    challenge_id: challenge_3.id,
    content_type: "Writing",
    content_url: "www",
    name: "Writing",
    description: "Wrtiting"
  )
puts "Exercise #{exercise_5.id} is created"

puts "All 5 exercises created for challenge 3!"

puts "#{User.count} users have been created"
puts "#{Challenge.count} challenges have been created"
puts "#{Exercise.count} exercises have been created"

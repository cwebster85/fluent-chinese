# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Cleaning database

puts "Cleaning up database"
CompletedExercise.destroy_all
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

puts "Creating 6 challenges"

challenge_1 = Challenge.create(
  name: "Unit 1: Saying One's Name and Age",
  description: "In this unit you will learn:
  - How to say your name and age
  - How to say someone else's name and age
  - How to count from 0-99
  - A range of common Chinese names
  - Words for siblings",
  date: Date.today.beginning_of_week + 1
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
  - Two nationalities",
  date: Date.today.beginning_of_week + 3
)
puts "Challenge #{challenge_2.id} is created"

challenge_3 = Challenge.create(
  name: "Unit 3: Saying where I live and am from",
  description: "In this unit you will learn:
  - To say where you live and are from
  - The names of renowned cities and places in the Chinese speaking world
  - The use of the verb 是 to say 'I am'
  You will also revisit:
  - How to introduce yourself
  - Saying your age and birthday",
  date: Date.today.beginning_of_week + 5
)
puts "Challenge #{challenge_3.id} is created"

challenge_4 = Challenge.create(
  name: "Unit 4: Talking about my family",
  description: "In this unit you will learn:
  - To say how many people are in your family
  - How well you get along with them
  - Words for family members
  - What their age is
  You will also revisit:
  - Numbers up to 100",
  date: Date.today.advance(weeks: 1).beginning_of_week + 1
)
puts "Challenge #{challenge_4.id} is created"

challenge_5 = Challenge.create(
  name: "Unit 5: Describing hair and eyes",
  description: "In this unit you will learn:
  - To describe what a person's hair and eyes are like
  - Colours
  - Negation
  You will also revisit:
  - Pronouns
  - Numbers 0-100",
  date: Date.today.advance(weeks: 1).beginning_of_week + 3
)
puts "Challenge #{challenge_5.id} is created"

challenge_6 = Challenge.create(
  name: "Unit 6: Describing myself and another family member",
  description: "In this unit you will learn:
  - How to say what your immediate family members are like
  - Useful adjectives to describe them
  - The use of 'very' 很
  - Use of 'because' 因为
  You will also revisit:
  - Numbers up to 100
  - Describing hair and eyes",
  date: Date.today.advance(weeks: 1).beginning_of_week + 5
)
puts "Challenge #{challenge_6.id} is created"

puts "All 6 challenges created!"

# Exercises

## Exercises for challenge 1

puts "Creating 5 exercises for challenge 1"

challenge_1_exercise_1 = Exercise.create(
  challenge_id: challenge_1.id,
  content_type: "video",
  content_url: "https://www.youtube.com/embed/Zw_kUQtcOOg",
  name: "Video Lecture",
  description: "Introduction and Resources"
)
puts "Exercise #{challenge_1_exercise_1.id} is created"

challenge_1_exercise_2 = Exercise.create(
  challenge_id: challenge_1.id,
  content_type: "vocabulary",
  content_url: "https://quizlet.com/590946874/flashcards/embed?i=8jnqv&x=1jj1",
  name: "Vocabulary Building",
  description: "Vocabulary Building"
)
puts "Exercise #{challenge_1_exercise_2.id} is created"

challenge_1_exercise_3 = Exercise.create(
  challenge_id: challenge_1.id,
  content_type: "Reading",
  content_url: "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1226964223&color=%23ff1904&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true",
  content_url_bis: "u7QWaCFu",
  content_url_ter: "https://soundcloud.com/chris-webster-988440086",
  name: "Reading",
  description: "我叫Chris。我三十六岁。我是英国人。我有一个姐姐，她叫Emma。她三十八岁。"
)
puts "Exercise #{challenge_1_exercise_3.id} is created"

challenge_1_exercise_4 = Exercise.create(
  challenge_id: challenge_1.id,
  content_type: "Listening",
  content_url: "https://edpuzzle.com/embed/media/62210fd7bf75bb42ca4e77aa",
  name: "Listening",
  description: "Listening"
)
puts "Exercise #{challenge_1_exercise_4.id} is created"

challenge_1_exercise_5 = Exercise.create(
  challenge_id: challenge_1.id,
  content_type: "Writing",
  content_url: "uNF4Ze1J",
  name: "Writing",
  description: "Writing"
)
puts "Exercise #{challenge_1_exercise_5.id} is created"

puts "All 5 exercises created for challenge 1!"

## Exercises for challenge 2

puts "Creating 5 exercises for challenge 2"

challenge_2_exercise_1 = Exercise.create(
  challenge_id: challenge_2.id,
  content_type: "video",
  content_url: "https://www.youtube.com/embed/5Ly4aFtltaY",
  name: "Video Lecture",
  description: "Introduction and Resources"
)
puts "Exercise #{challenge_2_exercise_1.id} is created"

challenge_2_exercise_2 = Exercise.create(
  challenge_id: challenge_2.id,
  content_type: "vocabulary",
  content_url: "https://quizlet.com/677991263/flashcards/embed?i=8jnqv&x=1jj1",
  name: "Vocabulary Building",
  description: "Vocabulary Building"
)
puts "Exercise #{challenge_2_exercise_2.id} is created"

challenge_2_exercise_3 = Exercise.create(
  challenge_id: challenge_2.id,
  content_type: "Reading",
  content_url: "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1228732771&color=%23e53935&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true",
  content_url_bis: "FAblLRiL",
  content_url_ter: "https://soundcloud.com/chris-webster-988440086",
  name: "Reading",
  description: "我的朋友叫John。他是中国人。他二十八岁。他的生日是十二月九号。"
)
puts "Exercise #{challenge_2_exercise_3.id} is created"

challenge_2_exercise_4 = Exercise.create(
  challenge_id: challenge_2.id,
  content_type: "Listening",
  content_url: "https://edpuzzle.com/embed/media/6229c5a074ce3442af37d3e1",
  name: "Listening",
  description: "Listening"
)
puts "Exercise #{challenge_2_exercise_4.id} is created"

challenge_2_exercise_5 = Exercise.create(
  challenge_id: challenge_2.id,
  content_type: "Writing",
  content_url: "i1eXTABB",
  name: "Writing",
  description: "Writing"
)
puts "Exercise #{challenge_2_exercise_5.id} is created"

puts "All 5 exercises created for challenge 2!"

## Exercises for challenge 3

puts "Creating 5 exercises for challenge 3"

challenge_3_exercise_1 = Exercise.create(
  challenge_id: challenge_3.id,
  content_type: "video",
  content_url: "https://www.youtube.com/embed/9Eth2OctZ9I",
  name: "Video Lecture",
  description: "Introduction and Resources"
)
puts "Exercise #{challenge_3_exercise_1.id} is created"

challenge_3_exercise_2 = Exercise.create(
  challenge_id: challenge_3.id,
  content_type: "vocabulary",
  content_url: "https://quizlet.com/600794389/flashcards/embed?i=8jnqv&x=1jj1",
  name: "Vocabulary Building",
  description: "Vocabulary Building"
)
puts "Exercise #{challenge_3_exercise_2.id} is created"

challenge_3_exercise_3 = Exercise.create(
  challenge_id: challenge_3.id,
  content_type: "Reading",
  content_url: "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1229844013&color=%23e53935&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true",
  content_url_bis: "G3TtcG96",
  content_url_ter: "https://soundcloud.com/chris-webster-988440086",
  name: "Reading",
  description: "我的朋友叫An。她是中国人，但是她住在英国。"
)
puts "Exercise #{challenge_3_exercise_3.id} is created"

challenge_3_exercise_4 = Exercise.create(
  challenge_id: challenge_3.id,
  content_type: "Listening",
  content_url: "https://edpuzzle.com/embed/media/5f75ec4922ce6540c9181b3f",
  name: "Listening",
  description: "Listening"
)
puts "Exercise #{challenge_3_exercise_4.id} is created"

challenge_3_exercise_5 = Exercise.create(
  challenge_id: challenge_3.id,
  content_type: "Writing",
  content_url: "idHAi4qo",
  name: "Writing",
  description: "Writing"
)
puts "Exercise #{challenge_3_exercise_5.id} is created"

puts "All 5 exercises created for challenge 3!"

## Exercises for challenge 4

puts "Creating 5 exercises for challenge 4"

challenge_4_exercise_1 = Exercise.create(
  challenge_id: challenge_4.id,
  content_type: "video",
  content_url: "www.google.com",
  name: "Video Lecture",
  description: "Introduction and Resources"
)
puts "Exercise #{challenge_4_exercise_1.id} is created"

challenge_4_exercise_2 = Exercise.create(
  challenge_id: challenge_4.id,
  content_type: "vocabulary",
  content_url: "www.sentencebuilders.com",
  name: "Vocabulary Building",
  description: "Vocabulary Building"
)
puts "Exercise #{challenge_4_exercise_2.id} is created"

challenge_4_exercise_3 = Exercise.create(
  challenge_id: challenge_4.id,
  content_type: "Reading",
  content_url: "www.google.com",
  content_url_bis: "www.google.com",
  content_url_ter: "www.google.com",
  name: "Reading",
  description: "Reading"
)
puts "Exercise #{challenge_4_exercise_3.id} is created"

challenge_4_exercise_4 = Exercise.create(
  challenge_id: challenge_4.id,
  content_type: "Listening",
  content_url: "www.google.com",
  name: "Listening",
  description: "Listening"
)
puts "Exercise #{challenge_4_exercise_4.id} is created"

challenge_4_exercise_5 = Exercise.create(
  challenge_id: challenge_4.id,
  content_type: "Writing",
  content_url: "www.google.com",
  name: "Writing",
  description: "Writing"
)
puts "Exercise #{challenge_4_exercise_5.id} is created"

puts "All 5 exercises created for challenge 4!"

## Exercises for challenge 5

puts "Creating 5 exercises for challenge 5"

challenge_5_exercise_1 = Exercise.create(
  challenge_id: challenge_5.id,
  content_type: "video",
  content_url: "www.google.com",
  name: "Video Lecture",
  description: "Introduction and Resources"
)
puts "Exercise #{challenge_5_exercise_1.id} is created"

challenge_5_exercise_2 = Exercise.create(
  challenge_id: challenge_5.id,
  content_type: "vocabulary",
  content_url: "www.sentencebuilders.com",
  name: "Vocabulary Building",
  description: "Vocabulary Building"
)
puts "Exercise #{challenge_5_exercise_2.id} is created"

challenge_5_exercise_3 = Exercise.create(
  challenge_id: challenge_5.id,
  content_type: "Reading",
  content_url: "www.google.com",
  content_url_bis: "www.google.com",
  content_url_ter: "www.google.com",
  name: "Reading",
  description: "Reading"
)
puts "Exercise #{challenge_5_exercise_3.id} is created"

challenge_5_exercise_4 = Exercise.create(
  challenge_id: challenge_5.id,
  content_type: "Listening",
  content_url: "www.google.com",
  name: "Listening",
  description: "Listening"
)
puts "Exercise #{challenge_5_exercise_4.id} is created"

challenge_5_exercise_5 = Exercise.create(
  challenge_id: challenge_5.id,
  content_type: "Writing",
  content_url: "www.google.com",
  name: "Writing",
  description: "Writing"
)
puts "Exercise #{challenge_5_exercise_5.id} is created"

puts "All 5 exercises created for challenge 5!"

## Exercises for challenge 6

puts "Creating 5 exercises for challenge 6"

challenge_6_exercise_1 = Exercise.create(
  challenge_id: challenge_6.id,
  content_type: "video",
  content_url: "www.google.com",
  name: "Video Lecture",
  description: "Introduction and Resources"
)
puts "Exercise #{challenge_6_exercise_1.id} is created"

challenge_6_exercise_2 = Exercise.create(
  challenge_id: challenge_6.id,
  content_type: "vocabulary",
  content_url: "www.sentencebuilders.com",
  name: "Vocabulary Building",
  description: "Vocabulary Building"
)
puts "Exercise #{challenge_6_exercise_2.id} is created"

challenge_6_exercise_3 = Exercise.create(
  challenge_id: challenge_6.id,
  content_type: "Reading",
  content_url: "www.google.com",
  content_url_bis: "www.google.com",
  content_url_ter: "www.google.com",
  name: "Reading",
  description: "Reading"
)
puts "Exercise #{challenge_6_exercise_3.id} is created"

challenge_6_exercise_4 = Exercise.create(
  challenge_id: challenge_6.id,
  content_type: "Listening",
  content_url: "www.google.com",
  name: "Listening",
  description: "Listening"
)
puts "Exercise #{challenge_6_exercise_4.id} is created"

challenge_6_exercise_5 = Exercise.create(
  challenge_id: challenge_6.id,
  content_type: "Writing",
  content_url: "www.google.com",
  name: "Writing",
  description: "Writing"
)
puts "Exercise #{challenge_6_exercise_5.id} is created"

puts "All 5 exercises created for challenge 6!"

puts "All exercises for all challenges created"

puts "#{User.count} users have been created"
puts "#{Challenge.count} challenges have been created"
puts "#{Exercise.count} exercises have been created"

puts "All done!"

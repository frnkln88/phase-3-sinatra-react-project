require 'faker'

puts "🌱 Seeding spices..."

puts "Deleting old data..."
User.destroy_all
Movie.destroy_all
Review.destroy_all

# Seed your database here

puts "Creating users..."
user1 = User.create(name: Faker::Name.name)
user2 = User.create(name: Faker::Name.name)
user3 = User.create(name: Faker::Name.name)

puts "Creating movies..."

movie1 = Movie.create(
    name: "Six Degrees of Separation",
    year: 1993,
    avg_rating: Faker::Number.number(digits: 1),
    image: '6degreesofseparation.jpeg'
)

movie2 = Movie.create(
    name: "Bad Boys",
    year: 1995,
    avg_rating: Faker::Number.number(digits: 1),
    image: 'badboys.jpeg'
)

movie3 = Movie.create(
    name: "Independence Day",
    year: 1996,
    avg_rating: Faker::Number.number(digits: 1),
    image: 'Independenceday.jpeg'
)

movie4 = Movie.create(
    name: "Men in Black",
    year: 1997,
    avg_rating: Faker::Number.number(digits: 1),
    image: 'meninblack.jpeg'
)

movie5 = Movie.create(
    name: "Wild Wild West",
    year: 1999,
    avg_rating: Faker::Number.number(digits: 1),
    image: 'wildwildwest.jpeg'
)

movie6 = Movie.create(
    name: "Ali",
    year: 2001,
    avg_rating: Faker::Number.number(digits: 1),
    image: 'ali.jpeg'
)

movie7 = Movie.create(
    name: "Men in Black II",
    year: 2002,
    avg_rating: Faker::Number.number(digits: 1),
    image: 'meninblack2.jpeg'
)

movie8 = Movie.create(
    name: "Bad Boys II",
    year: 2003,
    avg_rating: Faker::Number.number(digits: 1),
    image: 'badboys2.jpeg'
)

movie9 = Movie.create(
    name: "I, Robot",
    year: 2004,
    avg_rating: Faker::Number.number(digits: 1),
    image: 'irobot.jpeg'
)

movie10 = Movie.create(
    name: "Hitch",
    year: 2005,
    avg_rating: Faker::Number.number(digits: 1),
    image: 'hitch.jpeg'
)

movie11 = Movie.create(
    name: "The Pursuit of Happyness",
    year: 2006,
    avg_rating: Faker::Number.number(digits: 1),
    image: 'thepursuitofhappyness.jpeg'
)

movie12 = Movie.create(
    name: "I Am Legend",
    year: 2007,
    avg_rating: Faker::Number.number(digits: 1),
    image: 'iamlegend.jpeg'
)

movie13 = Movie.create(
    name: "Hancock",
    year: 2008,
    avg_rating: Faker::Number.number(digits: 1),
    image: 'hancock.jpeg'
)

movie14 = Movie.create(
    name: "Seven Pounds",
    year: 2008,
    avg_rating: Faker::Number.number(digits: 1),
    image: 'sevenpounds.jpeg'
)

movie15 = Movie.create(
    name: "Men in Black 3",
    year: 2012,
    avg_rating: Faker::Number.number(digits: 1),
    image: 'meninblack3.jpeg'
)

movie16 = Movie.create(
    name: "After Earth",
    year: 2013,
    avg_rating: Faker::Number.number(digits: 1),
    image: 'afterearth.jpeg'
)

movie17 = Movie.create(
    name: "Focus",
    year: 2015,
    avg_rating: Faker::Number.number(digits: 1),
    image: 'focus.png'
)

movie18 = Movie.create(
    name: "Suicide Squad",
    year: 2016,
    avg_rating: Faker::Number.number(digits: 1),
    image: 'suicidesquad.png'
)

movie19 = Movie.create(
    name: "Bright",
    year: 2017,
    avg_rating: Faker::Number.number(digits: 1),
    image: 'bright.jpeg'
)

movie20 = Movie.create(
    name: "Aladdin",
    year: 2019,
    avg_rating: Faker::Number.number(digits: 1),
    image: 'aladdin.png'
)

movie21 = Movie.create(
    name: "Gemini Man",
    year: 2019,
    avg_rating: Faker::Number.number(digits: 1),
    image: 'geminiman.jpeg'
)
movie22 = Movie.create(
    name: "Bad Boys for Life",
    year: 2020,
    avg_rating: Faker::Number.number(digits: 1),
    image: 'badboysforlife.jpeg'
)

movie23 = Movie.create(
    name: "King Richard",
    year: 2021,
    avg_rating: Faker::Number.number(digits: 1),
    image: 'kingrichard.jpeg'
)
puts "Creating reviews..."
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.singular_siegler,
    user_id: user1.id,
    movie_id: movie1.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.singular_siegler,
    user_id: user2.id,
    movie_id: movie1.id
)

Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.famous_last_words,
    user_id: user3.id,
    movie_id: movie1.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.famous_last_words,
    user_id: user2.id,
    movie_id: movie2.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.famous_last_words,
    user_id: user3.id,
    movie_id: movie2.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.famous_last_words,
    user_id: user3.id,
    movie_id: movie3.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.famous_last_words,
    user_id: user2.id,
    movie_id: movie3.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.singular_siegler,
    user_id: user1.id,
    movie_id: movie4.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.singular_siegler,
    user_id: user2.id,
    movie_id: movie4.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.singular_siegler,
    user_id: user2.id,
    movie_id: movie5.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.singular_siegler,
    user_id: user3.id,
    movie_id: movie5.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.singular_siegler,
    user_id: user1.id,
    movie_id: movie6.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.singular_siegler,
    user_id: user2.id,
    movie_id: movie6.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.singular_siegler,
    user_id: user1.id,
    movie_id: movie7.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.jack_handey,
    user_id: user2.id,
    movie_id: movie7.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.singular_siegler,
    user_id: user1.id,
    movie_id: movie8.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.jack_handey,
    user_id: user2.id,
    movie_id: movie8.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.singular_siegler,
    user_id: user1.id,
    movie_id: movie9.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.jack_handey,
    user_id: user2.id,
    movie_id: movie9.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.matz,
    user_id: user2.id,
    movie_id: movie10.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.jack_handey,
    user_id: user3.id,
    movie_id: movie10.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.matz,
    user_id: user2.id,
    movie_id: movie11.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.jack_handey,
    user_id: user3.id,
    movie_id: movie11.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.matz,
    user_id: user2.id,
    movie_id: movie12.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.jack_handey,
    user_id: user3.id,
    movie_id: movie12.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.matz,
    user_id: user2.id,
    movie_id: movie13.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.jack_handey,
    user_id: user3.id,
    movie_id: movie13.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.matz,
    user_id: user2.id,
    movie_id: movie14.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.jack_handey,
    user_id: user3.id,
    movie_id: movie14.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.most_interesting_man_in_the_world,
    user_id: user1.id,
    movie_id: movie15.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.jack_handey,
    user_id: user3.id,
    movie_id: movie15.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.most_interesting_man_in_the_world,
    user_id: user1.id,
    movie_id: movie16.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.robin,
    user_id: user3.id,
    movie_id: movie16.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.most_interesting_man_in_the_world,
    user_id: user1.id,
    movie_id: movie17.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.robin,
    user_id: user3.id,
    movie_id: movie17.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.most_interesting_man_in_the_world,
    user_id: user1.id,
    movie_id: movie18.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.robin,
    user_id: user3.id,
    movie_id: movie18.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.most_interesting_man_in_the_world,
    user_id: user1.id,
    movie_id: movie19.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.robin,
    user_id: user3.id,
    movie_id: movie19.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.most_interesting_man_in_the_world,
    user_id: user1.id,
    movie_id: movie20.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.robin,
    user_id: user3.id,
    movie_id: movie20.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.most_interesting_man_in_the_world,
    user_id: user1.id,
    movie_id: movie21.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.robin,
    user_id: user3.id,
    movie_id: movie21.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.most_interesting_man_in_the_world,
    user_id: user2.id,
    movie_id: movie22.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.robin,
    user_id: user3.id,
    movie_id: movie22.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.yoda,
    user_id: user1.id,
    movie_id: movie23.id
)
Review.create(
    rating: rand(1..10),
    comment: Faker::Quote.yoda,
    user_id: user2.id,
    movie_id: movie23.id
)
puts "✅ Done seeding!"

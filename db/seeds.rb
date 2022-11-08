puts "🌱 Seeding Greatness!..."


5.times do
    seeded_users = User.create(
        name: Faker::Name.name,
        email: Faker::Internet.free_email,
        password: Faker::Alphanumeric.alphanumeric(number: 10) 
    ) 
end


5.times do
    seeded_books = Book.create(
        title: Faker::Book.title,
        author: Faker::Book.author,
        description: Faker::Book.genre,
        pages: Faker::Number.within(range: 1..500),
        user_id: Faker::Number.within(range: 1..10)
    )
end


5.times do
    seeded_reviews = Review.create(
        comment:Faker::Verb.past_participle
    )
end


puts "✅ Done seeding!"
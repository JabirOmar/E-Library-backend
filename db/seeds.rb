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
        pages: Faker::Number.within(range: 100..300),
        user_id: Faker::Number.within(range: 1..10)
    )
end


review1 = Review.create(comments:"I liked this less than Divergent but it was exciting and fun!")
review2 = Review.create(comments:"I love the strong female protagonist and the quick and exciting story.")
review3 = Review.create(comments:"This book shattered my heart to pieces but I loved it all the same.")
review4 = Review.create(comments:"The story is amazing but so incredibly slow, to be honest I enjoyed the movie more!")
review5 = Review.create(comments:"More fun characters are introduced which made this book interesting, besides that I don't remember much abiut the story.")


puts "✅ Done seeding!"
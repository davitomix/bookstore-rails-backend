# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |n|
  name  = Faker::Name.name
  catchphrase = Faker::Lorem.sentence(word_count: 15)
  secret_key = 'password'
  Character.create!(
              name: name,
              catchphrase: catchphrase,
              secret_key: secret_key
  )
end

8.times do |n|
  title = Faker::Book.title
  id = (856000 + (rand(90..100) * rand(499..999)))
  author = Faker::Book.author
  category = ['Action', 'Biography', 'History', 'Horror', 'Kids', 'Learning', 'Sci-Fi', 'Drama'].sample
  pages = rand(100..1000).to_s
  progress = rand(pages.to_i).to_s
  Book.create!(
              id: id,
              title: title,
              author: author,
              category: category,
              pages: pages,
              progress: progress,
  )
end
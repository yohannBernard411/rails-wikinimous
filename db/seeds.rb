# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "start fill (10) Article table"
x = 0
10.times do
  puts "#{x += 1} - start"
  article = Article.new
  article.title = Faker::Book.title 
  article.content = Faker::Lorem.sentence(word_count: Faker::Number.between(from: 10, to: 20))
  article.save!
  puts "  - end"
end
puts "finish fill (10) Article table"

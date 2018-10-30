# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
names = []
10.times do
  names << Faker::LeagueOfLegends.quote
end

content = []
10.times do
  content << Faker::Lorem.paragraphs
end

10.times do
  Article.create(title: names.sample, content: content.sample)
end

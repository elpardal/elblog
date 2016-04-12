# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
50.times do
  Article.create({title: Faker::Lorem.words(2).join(' ').titleize,
                body: Faker::Lorem.paragraph(9, true, 4),
                published_at: Faker::Time.between(7.days.ago, Time.now, :all),
                created_at:   Faker::Time.between(10.months.ago, 2.month.ago, :all),
                updated_at:   Faker::Time.between(30.days.ago, Time.now, :all)})
end

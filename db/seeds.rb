# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


5.times do |x|
    Genre.create(name: Faker::Music.unique.genre)
end

15.times do |x|
    Artist.create(name: Faker::Music.unique.band, bio: Faker::Quote.famous_last_words)
end

25.times do |x|
    Song.create(name: Faker::Music.unique.album, artist: Artist.all.sample, genre: Genre.all.sample)
end
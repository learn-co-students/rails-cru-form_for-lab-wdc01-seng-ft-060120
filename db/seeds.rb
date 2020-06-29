# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.destroy_all
Genre.destroy_all
Song.destroy_all

10.times {Artist.create(name: Faker::Music.unique.band,
                        bio: Faker::Music.unique.chord)}

10.times {Genre.create(name: Faker::Music.genre)}

20.times {Song.create(name: Faker::Music::Prince.unique.song,
                         artist: Artist.all.sample, 
                         genre: Genre.all.sample)}
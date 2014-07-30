# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
# #   Mayor.create(name: 'Emanuel', city: cities.first)

 search = Imdb::Search.new('Bruce Willis')
 movies = search.movies[0..49].collect{ |m| [m.title , m.plot, m.poster, m.year, m.cast_members]}
 movies.each do |movie|
 	my_movie = Movie.create(name: movie[0], plot: movie[1], poster: movie[2], year: movie[3])
 	movie[4].each do |actorname|
 		my_movie.cast_members << CastMember.find_or_create_by(name: actorname)		
 	end
 end

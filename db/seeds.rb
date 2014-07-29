# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'imdb'
search = Imdb::Search.new('Matrix')
collect = search.movies[0..49].collect{ |m| [m.title , m.plot, m.poster, m.year]}
collect.each do |a|
	Movie.create(name: a[0], plot: a[1], poster: a[2], year: a[3])
end
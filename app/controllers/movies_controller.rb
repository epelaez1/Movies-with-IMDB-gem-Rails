class MoviesController < ApplicationController
	def index
		@movies = Movie.order(year: :asc).limit(10)
	end
	def show
		@movie = Movie.find params[:id]
		@cast = @movie.cast_members
	rescue
		@movies = Movie.order(year: :asc).limit(10)
		render 'index'
	end
	def cast_member
		@castmember= CastMember.find params[:id]
		@filmsof = @castmember.movies
	rescue
		@movies = Movie.order(year: :asc).limit(10)
		render 'index'
	end
end

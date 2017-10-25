class MoviesController < ApplicationController

  def index
    @movies = movie.all
  end

  def show
    @movie = Movie.find(params[:movie_id])
  end

end

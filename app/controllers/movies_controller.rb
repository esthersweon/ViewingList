class MoviesController < ApplicationController


  def index
    response = HTTParty.get('https://api.themoviedb.org/3/search/movie?api_key=7c63b5b2b830539c1cc4b3954b6c8982&language=en-US&page=1&include_adult=false&query=' + params[:q])
    @movies = response
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def create
    @movie = Movive.create()
  end


end

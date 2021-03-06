class MoviesController < ApplicationController
  def index
    if params[:q] === ""
      redirect_to lists_path, :flash => { :alert => "Please enter a search request and try again." }
    else
      response = HTTParty.get('https://api.themoviedb.org/3/search/movie?api_key=7c63b5b2b830539c1cc4b3954b6c8982&language=en-US&page=1&include_adul=false&query=' + params[:q])
      @movies = response
      @user = current_user
      if user_signed_in?
        @users_lists = List.where(user_id: current_user.id)
      end
    end
  end

  def show
    response = HTTParty.get("https://api.themoviedb.org/3/movie/#{params[:id]}?api_key=7c63b5b2b830539c1cc4b3954b6c8982&language=en-US")
    @movie = response.parsed_response
    movie = Movie.find_or_create_by(tmdb_id: params[:id]) do |movie|
      movie.tmdb_id = response.parsed_response['id']
      movie.title =  response.parsed_response['title']
      movie.release_date = response.parsed_response['release_date']
      movie.image_url = "https://image.tmdb.org/t/p/w185#{response.parsed_response['poster_path']}"
    end
    response2 = HTTParty.get("https://api.themoviedb.org/3/movie/#{movie.tmdb_id}/credits?api_key=7c63b5b2b830539c1cc4b3954b6c8982")
    @cast = response2.parsed_response['cast']
    @crew = response2.parsed_response['crew']
    @user = current_user
    if user_signed_in?
        @users_lists = List.where(user_id: current_user.id)
      end
  end

end

class ListmoviesController < ApplicationController

  def create
    movie = Movie.find_or_create_by(tmdb_id: params[:tmdb_id]) do |movie|
      movie.title =  params[:title]
      movie.release_date = params[:release_date]
      movie.image_url = "https://image.tmdb.org/t/p/w185#{params[:image_url]}"
    end
    listmovie = Listmovie.create(list_id: params[:list_id], movie_id: movie.id )
    redirect_to list_path(params[:list_id])
  end

  def destroy
    list = Listmovie.find(params[:id]).list_id
    Listmovie.find(params[:id]).destroy
    redirect_to list_path(list)
  end

end

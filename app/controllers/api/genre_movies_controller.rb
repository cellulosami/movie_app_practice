class Api::GenreMoviesController < ApplicationController
  def create
    @genre_movie = GenreMovie.new(
      genre_id: params[:genre_id],
      movie_id: params[:movie_id]
    )
    @genre_movie.save
    render "show.json.jb"
  end
end

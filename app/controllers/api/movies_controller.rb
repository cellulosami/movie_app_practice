class Api::MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render "index.json.jb"
  end

  def show
    @movie = Movie.find_by(id: params[:id].to_i)
    render 'show.json.jb'
  end
end

class MoviesController < ApplicationController 
  def index 
    @movies = MovieFacade.get_movies
  end

  def show 
    movie_id = params[:id]
    @movie = MovieFacade.get_single_movie(movie_id)
  end
end
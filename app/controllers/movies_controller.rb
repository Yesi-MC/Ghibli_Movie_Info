class MoviesController < ApplicationController 
  def index 
    #this can be deleted now that its refactored into the facade 
    # conn = Faraday.new("https://ghibliapi.herokuapp.com")
    # response = conn.get("/films")
    # data = JSON.parse(response.body, symbolize_names: true )
    # @movies = data.map do |movie|
    #   Movie.new(movie)
    # end
    @movies = MovieFacade.get_movies
  end

  def show 

    movie_id = params[:id]
    # conn = Faraday.new("https://ghibliapi.herokuapp.com")
    # response = conn.get("films/#{movie_id}")
    # data = JSON.parse(response.body, symbolize_names: true )
    # @movie = Movie.new(data)
    @movie = MovieFacade.get_single_movie(movie_id)
  end
end
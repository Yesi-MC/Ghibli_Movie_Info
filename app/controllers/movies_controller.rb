class MoviesController < ApplicationController 
  def index 
    conn = Faraday.new("https://ghibliapi.herokuapp.com")
    response = conn.get("/films")
    @movies = JSON.parse(response.body, symbolize_names: true )
  end
end
class MovieFacade 
  class << self 
    def get_movies 
      data = MovieService.call_api_for_movies 
      data.map do |movie| 
        Movie.new(movie) 
      end 
    end

    def get_single_movie(movie_id) 
      data = MovieService.call_api_for_single_movie(movie_id)
      Movie.new(data) 
    end
  end 
end
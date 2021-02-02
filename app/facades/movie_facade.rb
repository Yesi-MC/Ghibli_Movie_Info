class MovieFacade 
  class << self 
    def get_movies 
      # facade should not do api calls- the api will be 
      #refactored into a service 
      # conn = Faraday.new("https://ghibliapi.herokuapp.com")
      # response = conn.get("/films")
      # data = JSON.parse(response.body, symbolize_names: true )
      
      data = MovieService.call_api_for_movies #<----this is an array of hashes
      data.map do |movie| #going through out Movie class 
        Movie.new(movie) #turns into several movie objects
      end 
    end

    def get_single_movie(movie_id) #this gets movie_id from parms in the controller
      # conn = Faraday.new("https://ghibliapi.herokuapp.com")
      # response = conn.get("films/#{movie_id}")
      # data = JSON.parse(response.body, symbolize_names: true )
      data = MovieService.call_api_for_single_movie(movie_id)
      Movie.new(data) #this is only one has so we dont have to iterate through it 
    end
  end 
end
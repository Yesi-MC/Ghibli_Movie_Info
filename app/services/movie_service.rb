class MovieService 
  class << self 

    def call_api_for_movies 
      response = conn.get("/films") 
      parse_data(response) 
    end

    def call_api_for_single_movie(movie_id)
      response = conn.get("films/#{movie_id}")
      parse_data(response) 
    end

    private 
    def conn 
      Faraday.new("https://ghibliapi.herokuapp.com")
    end

    def parse_data(response) 
      JSON.parse(response.body, symbolize_names: true )
    end
  end 
end
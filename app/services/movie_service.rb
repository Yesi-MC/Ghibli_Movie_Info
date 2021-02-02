class MovieService 
  class << self #this creates all the mehtods to be class self.methods 

    def call_api_for_movies 
      # conn = Faraday.new("https://ghibliapi.herokuapp.com") created a new mothod for this line 
      response = conn.get("/films") #response stays here since we are calling the api in this method 
      # data = JSON.parse(response.body, symbolize_names: true )
      parse_data(response) 
    end

    def call_api_for_single_movie(movie_id)
      # conn = Faraday.new("https://ghibliapi.herokuapp.com")
      response = conn.get("films/#{movie_id}")
      # data = JSON.parse(response.body, symbolize_names: true )
      parse_data(response) 
    end

    private #these two methods below are helper methods for the calls 
    #this is for only things called inside this file 
    def conn 
      Faraday.new("https://ghibliapi.herokuapp.com")
    end

    def parse_data(response) 
      JSON.parse(response.body, symbolize_names: true )
    end
  end #if instance methods are needed they can go oafter this line 
end
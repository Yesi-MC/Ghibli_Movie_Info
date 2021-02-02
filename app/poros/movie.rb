class Movie 
  attr_reader :title, 
              :description, 
              :director, 
              :producer, 
              :release_date, 
              :rating, 
              :id

  def initialize(data)
    @title = data[:title].upcase
    @description = data[:description]
    @director = data[:director]
    @producer = data[:producer]
    @release_date = data[:release_date]
    @rating = data[:rt_score]
    @id = data[:id]
  end
end
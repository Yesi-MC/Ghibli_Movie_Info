require 'rails_helper'

RSpec.describe MovieFacade do 
  context "class methods" do 
    it "get_movies" do
      search = MovieFacade.get_movies

      expect(search).to be_a(Array)  
      expect(search.count).to be_a(Numeric) 
      expect(search.first).to be_a(Movie) 
    end 

    it "get_single_movie" do
      search = MovieFacade.get_single_movie("2baf70d1-42bb-4437-b551-e5fed5a87abe")

      expect(search).to be_a(Movie) 
    end 
  end 
end 

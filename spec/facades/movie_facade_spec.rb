require 'rails_helper'

RSpec.describe MovieFacade do 
  context "class methods" do 
    it "get_movies" do
      search = MovieFacade.get_movies

      expect(search).to be_a(Array) #an Array of movieopbjects now!!!! MO LONGER array of hashes here 
      expect(search.count).to eq(20) #expecting this amount of objects within the array
      expect(search.first).to be_a(Movie) #expecting the firs thing in the array to be an object
    end 

    it "get_single_movie" do
      search = MovieFacade.get_single_movie("2baf70d1-42bb-4437-b551-e5fed5a87abe")

      expect(search).to be_a(Movie) 
    end 
  end 
end 
#this test is shorter because th service and poro are well tested = 
#the service tests the hash and its keys 
#the poro tests for the methods 
#the facade now just needs to test that it is giving us back what we want. 
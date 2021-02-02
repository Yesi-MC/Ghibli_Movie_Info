require 'rails_helper'

RSpec.describe MovieService do 
  context "class methods" do 
    it "call_api_for-movies" do
      search = MovieService.call_api_for_movies

      expect(search).to be_a(Array) #expecting the aray class 
      
      movie_data = search.first #if its an array of things we only want to test the first one 
      #and we only want to test the keys we are using 
    
      expect(movie_data).to have_key(:id)
      expect(movie_data[:id]).to be_a(String)
      
      expect(movie_data).to have_key(:title)
      expect(movie_data[:title]).to be_a(String)
      
      expect(movie_data).to have_key(:description)
      expect(movie_data[:description]).to be_a(String)
      
      expect(movie_data).to have_key(:producer)
      expect(movie_data[:producer]).to be_a(String)
      
      expect(movie_data).to have_key(:release_date)
      expect(movie_data[:release_date]).to be_a(String)
      
      expect(movie_data).to have_key(:rt_score)
      expect(movie_data[:rt_score]).to be_a(String)
    end 

    it "call_api_for-movies" do
      movie_data = MovieService.call_api_for_single_movie("2baf70d1-42bb-4437-b551-e5fed5a87abe")

      expect(movie_data).to be_a(Hash) #expecting the hash class 
      
      #also only test for the keys we need, they wont alays be the same as the one above 
      #sometimes we will need to test fo more or less keys for the single movie 
      expect(movie_data).to have_key(:id)
      expect(movie_data[:id]).to be_a(String)
      
      expect(movie_data).to have_key(:title)
      expect(movie_data[:title]).to be_a(String)
      
      expect(movie_data).to have_key(:description)
      expect(movie_data[:description]).to be_a(String)
      
      expect(movie_data).to have_key(:producer)
      expect(movie_data[:producer]).to be_a(String)
      
      expect(movie_data).to have_key(:release_date)
      expect(movie_data[:release_date]).to be_a(String)
      
      expect(movie_data).to have_key(:rt_score)
      expect(movie_data[:rt_score]).to be_a(String)
    end 
  end 
end


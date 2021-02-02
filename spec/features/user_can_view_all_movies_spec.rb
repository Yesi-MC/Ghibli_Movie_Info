require 'rails_helper'

describe 'As a visitor' do
  describe "When I visit the welcome page '/'" do
    it "can view all Ghibli movies" do 
      visit root_path 
      
      click_button "View all Movies" 

      expect(current_path).to eq(movies_path)
      expect(page).to have_content("CASTLE IN THE SKY")
      #this test is like our search index
    end 
  end 
end
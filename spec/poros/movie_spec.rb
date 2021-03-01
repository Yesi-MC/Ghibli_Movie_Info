require 'rails_helper'

RSpec.describe Movie do 
  it "it exists and has attributes" do 
    movie = Movie.new({
                      :id=>"2baf70d1-42bb-4437-b551-e5fed5a87abe",
                      :title=>"Castle in the Sky",
                      :description=>
                        "The orphan Sheeta inherited a mysterious crystal that links her to the mythical sky-kingdom of Laputa. With the help of resourceful Pazu and a rollicking band of sky pirates, she makes her way to the ruins of the once-great civilization. Sheeta and Pazu must outwit the evil Muska, who plans to use Laputa's science to make himself ruler of the world.",
                      :director=>"Hayao Miyazaki",
                      :producer=>"Isao Takahata",
                      :release_date=>"1986",
                      :rt_score=>"95",
                      :people=>["https://ghibliapi.herokuapp.com/people/"],
                      :species=>["https://ghibliapi.herokuapp.com/species/af3910a6-429f-4c74-9ad5-dfe1c4aa04f2"],
                      :locations=>["https://ghibliapi.herokuapp.com/locations/"],
                      :vehicles=>["https://ghibliapi.herokuapp.com/vehicles/"],
                      :url=>"https://ghibliapi.herokuapp.com/films/2baf70d1-42bb-4437-b551-e5fed5a87abe" 
                      })
    expect(movie).to be_a(Movie) 
    expect(movie.title).to eq("CASTLE IN THE SKY") 
    expect(movie.description).to eq("The orphan Sheeta inherited a mysterious crystal that links her to the mythical sky-kingdom of Laputa. With the help of resourceful Pazu and a rollicking band of sky pirates, she makes her way to the ruins of the once-great civilization. Sheeta and Pazu must outwit the evil Muska, who plans to use Laputa's science to make himself ruler of the world.")               
    expect(movie.director).to eq("Hayao Miyazaki")               
    expect(movie.producer).to eq("Isao Takahata")               
    expect(movie.release_date).to eq("1986")               
    expect(movie.rating).to eq("95")                            
    expect(movie.id).to eq("2baf70d1-42bb-4437-b551-e5fed5a87abe")   
   
  end
end
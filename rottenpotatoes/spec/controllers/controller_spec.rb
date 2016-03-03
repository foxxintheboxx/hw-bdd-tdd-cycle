require 'rails_helper'



# RSpec.describe MoviesController, type: :controller do
#   describe 'find movies with same director' do  
#     let(:movie) { Movie.create }  
#     before {movie.id=1, movie.director = "Steven S", movie.title="Hello World"}  
#     subject { movie }  
#     it 'should call the model method that searches for movie by director' do  
#      Movie.should_receive(:find).with("1").and_return(movie)

#       #this get is passing a nil id  
#       get :search_directors, :title => movie.title
#     end  
#   end  
# end


describe MoviesController do
  describe 'searching for similar movies' do

    it 'should follow the route to the similar movies by director page' do
 
    end
    it 'should follow the route to the similar movies by director page' do
 
    end
    it 'should follow the route to the similar movies by director page' do
 
    end
  describe 'searching for non  movies' do
    it 'should follow the route to the similar movies by director page' do
 
    end
    it 'should follow the route to the similar movies by director page' do
 
    end
  end
 end
end
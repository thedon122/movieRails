require 'httparty'
require 'pp'
class MoviesController < ApplicationController
    def index
        @movies = current_user.movies.map do |movie|
          url = "http://www.omdbapi.com/?i=#{movie.omdb_id}&apikey=f3d1e28d"
          response = HTTParty.get(url)
          response_body = JSON.parse(response.body)
    
          movie.title = response_body['Title']
          movie.release_year = response_body['Year']
          movie.genre = response_body['Genre']
          movie.synopis = response_body['Plot']
          movie.picture =response_body['Poster']
        end
end

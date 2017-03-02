class MoviesController < ApplicationController
    def index
        @movies = Movie.all
    end
    
    def movie_params
        params.require(:movie).permit(:title, :rating, :description, :release_date)
    end
    
end
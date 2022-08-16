class MoviesController < ApplicationController
  
  def index
    movies = Movie.all
    render json: movies
  end

  def create 
    new_movie = Movi.create(movie_params)
    render json: new_movie, status: :created 
  end

  private 
  
  def movie_params
    params.permit(:title, :length, :year, :director, :description, :poster_url, :category, :discount, :female_director)
  end

end

class MoviesController < ApplicationController
  before_action :get_movie, only: [:show, :edit, :destroy]

  def index
    @movies = Movie.all
  end

  def show
  end

  def create
  end

  def edit
  end

  def destroy
  end

  private

  def get_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :release_date, :genre, :director_id)
  end
end

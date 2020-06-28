class GenresController < ApplicationController
  before_action :set_genre, only: [:show,:edit,:update]
  def create
    new_genre = Genre.create(genre_params)
    redirect_to genre_path(new_genre)
  end
  def update
    @genre.update(genre_params)
    redirect_to genre_path(@genre)
  end
  def new
    @genre = Genre.new
  end
  def edit
  end
  def show
  end
  private
  def genre_params
    params.require(:genre).permit(:name)
  end
  def set_genre
    @genre = Genre.find(params[:id])
  end
end

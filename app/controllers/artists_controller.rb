class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show,:edit,:update]
  def create
    new_artist = Artist.create(artist_params)
    redirect_to artist_path(new_artist)
  end
  def update
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end
  def new
    @artist = Artist.new
  end
  def edit
  end
  def show
  end
  private
  def artist_params
    params.require(:artist).permit(:name,:bio)
  end
  def set_artist
    @artist = Artist.find(params[:id])
  end
end

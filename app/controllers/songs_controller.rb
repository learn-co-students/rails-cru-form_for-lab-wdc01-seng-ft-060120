class SongsController < ApplicationController
  before_action :set_song, only: [:show,:edit,:update]
  def index
    @songs = Song.all
  end
  def create
    new_song = Song.create(song_params)
    redirect_to song_path(new_song)
  end
  def update
    @song.update(song_params)
    redirect_to song_path(@song)
  end
  def new
    @song = Song.new
  end
  def edit
  end
  def show
  end
  private
  def song_params
    params.require(:song).permit(:name,:artist_id,:genre_id)
  end
  def set_song
    @song = Song.find(params[:id])
  end
end

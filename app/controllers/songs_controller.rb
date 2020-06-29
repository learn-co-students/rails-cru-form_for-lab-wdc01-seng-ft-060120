class SongsController < ApplicationController
    def index
        @songs = Song.all    
    end

    def show
        @song = Song.find(params[:id])
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.create(strong_params)
        redirect_to song_path(@song.id)
    end

    def edit
        @song = Song.find(params[:id])
    end

    def update
        @song = Song.find(params[:id])
        @song.update(strong_params)
        @song.save
        redirect_to song_path(@song.id)
    end

    private

    def strong_params
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end

end

class SongsController < ApplicationController

    def index
        @songs = Song.all
    end

    def show
        @song = Song.find(params[:id])
        @artist = Artist.find(@song.artist_id)
        @genre = Genre.find(@song.genre_id)
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.new
        @song.name = params[:song][:name]
        @song.artist_id = params[:song][:artist_id]
        @song.genre_id = params[:song][:genre_id]
        @song.save
        redirect_to song_url(@song)
    end

    def edit
        @song = Song.find(params[:id])
        @artist = Artist.find(@song.artist_id)
        @genre = Genre.find(@song.genre_id)
    end

    def update
        @song = Song.find(params[:id])
        @song.update(song_params)
        redirect_to song_url(@song)
    end

    private

    def song_params
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end
end
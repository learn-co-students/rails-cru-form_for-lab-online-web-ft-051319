class SongsController < ApplicationController

    def index
        @songs = Song.all
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.new(params.require(:song).permit(
            :name, :artist_id, :genre_id
        ))
        @song.save
        redirect_to song_path(@song)
    end

    def show
        @song = Song.find_by(id: params[:id])
        @artist = @song.artist
        @genre = @song.genre
    end

    def edit
        @song = Song.find_by(id: params[:id])
    end

    def update
        @song = Song.find_by(id: params[:id])
        @song.update(name: params[:song][:name], artist_id: params[:song][:artist_id], genre_id: params[:song][:genre_id])
        @song.save
        redirect_to song_path(@song)
    end 

end

class SongsController < ApplicationController

<<<<<<< HEAD
    def index
        @songs = Song.all 
    end

    def new 
        @song = Song.new
    end

    def show 
        song_find
    end

    def create
        @song = Song.create(song_params)
        song_redirect
    end

    def edit 
        song_find
    end

    def update
        song_find
        @song.update(song_params)
        song_redirect
    end

    private

    def song_redirect
        redirect_to song_path(@song)
    end

    def song_params
        params.require(:song).permit(:name, :genre_id, :artist_id)
    end

    def song_find
        @song = Song.find(params[:id])
=======
  def index
    @songs = Song.all
  end

  def create
    @song = Song.create(song_params)
    redirect_to song_path(@song)
  end

  def new
    @song = Song.new
  end

  def show
    song_find
  end

  def edit
    song_find
  end

  def update
	  @song = Song.find(params[:id])
	  @song.update(song_params)
	  redirect_to song_path(@song)
	end

  private

    def song_find
      @song = Song.find(params[:id])
    end

    def song_params
      params.require(:song).permit(:name, :artist_id, :genre_id)
>>>>>>> d4a53349eb45503043e5392cc6f64b5dfff023b9
    end

end

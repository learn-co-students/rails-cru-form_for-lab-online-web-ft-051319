class ArtistsController < ApplicationController

<<<<<<< HEAD
    def index
        @artists = Artist.all 
    end

    def new 
        @artist = Artist.new
    end

    def show 
        artist_find
    end

    def create
        @artist = Artist.create(artist_params)
        artist_redirect
    end

    def edit 
        artist_find
    end

    def update
        artist_find
        @artist.update(artist_params)
        artist_redirect
    end

    private

    def artist_redirect
        redirect_to artist_path(@artist)
    end

    def artist_params
        params.require(:artist).permit(:name, :bio)
    end

    def artist_find
        @artist = Artist.find(params[:id])
    end


=======
  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params)
    redirect_to artist_path(@artist)
  end

  def show
    artist_find
  end

  def edit
    artist_find
  end

  def update
    artist_find
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end

  private

    def artist_find
      @artist = Artist.find(params[:id])
    end

    def artist_params
      params.require(:artist).permit(:name, :bio)
    end

>>>>>>> d4a53349eb45503043e5392cc6f64b5dfff023b9

end

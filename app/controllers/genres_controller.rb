class GenresController < ApplicationController

<<<<<<< HEAD
    def index
        @genres = Genre.all 
    end

    def new 
        @genre = Genre.new
    end

    def show 
        genre_find
    end

    def create
        @genre = Genre.create(genre_params)
        genre_redirect
    end

    def edit 
        genre_find
    end

    def update
        genre_find
        @genre.update(genre_params)
        genre_redirect
    end

    private

    def genre_redirect
        redirect_to genre_path(@genre)
    end

    def genre_params
        params.require(:genre).permit(:name)
    end

    def genre_find
        @genre = Genre.find(params[:id])
=======
  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(params.require(:genre).permit(:name))
    redirect_to genre_path(@genre)
  end

  def show
    genre_find
  end

  def edit
    genre_find
  end

  def update
    genre_find
    @genre.update(params.require(:genre).permit(:name))
    redirect_to genre_path(@genre)
  end

  private

    def genre_find
      @genre = Genre.find(params[:id])
>>>>>>> d4a53349eb45503043e5392cc6f64b5dfff023b9
    end

end

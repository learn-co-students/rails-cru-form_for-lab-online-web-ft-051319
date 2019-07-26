class GenresController < ApplicationController

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
    end

end

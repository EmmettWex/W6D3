class ArtworksController < ApplicationController
    
    def index
        @artworks = Artwork.all
        render json: @artworks
    end

    def create
        @artwork = Artwork.new(artwork_params)
        if @artwork.save
            render json: @artwork, status: 201
        else
            render json: @artwork.errors.full_messages, status: 422
        end
    end

    def update
        @artwork = Artwork.find(artwork_params[:id])
        if @artwork.update(artwork_params)
            render json: @artwork, status: 201
        else
            render json: @artwork.error.full_messages, status: 422
        end
    end

    def show
        @artwork = Artwork.find(artwork_params[:id])
        render json: @artwork
    end


    private
    def artwork_params
        params.require(:artwork).permit(:title, :image_url, :artist_id)
    end
end
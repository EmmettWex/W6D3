class ArtworkShare < ApplicationController

    def create(art_id, viewer_id)
        @artwork_share = ArtworkShare.new(artwork_share_params)

        if @artwork_share.save
            render json: @artwork_share, status: 201
        else
            render json: @artwork_share.errors.full_messages, status: 422
        end
    end

    def destroy
        @artwork_share = ArtworkShare.find(arwork_share_params[:id])

        @artwork_share.destroy
        render json: @artwork_share
    end

    private

    def artwork_share_params
        params.require(:artwork_share).permit(:artwork_id, :viewer_id)
    end

end
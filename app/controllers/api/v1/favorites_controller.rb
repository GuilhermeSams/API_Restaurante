class Api::V1::FavoritesController < ApplicationController
    acts_as_token_authentication_handler_for User

    def index
        favorite = Favorite.all
        render json: favorite, status: :ok
    end

    def create
        favorite = Favorite.new(favorites_params)
        favorite.save!
        render json: favorite, status: :ok
    rescue StandardError => e
        render json: e, status: :unprocessable_entity
    end
    

    def delete
        favorite = Favorite.find(params[:id])
        favorite.destroy!
        render json: { messege: "Seu prato favorito, #{Favorite.name} foi deletado com sucesso"}, status: :ok
    rescue StandardError => e
        render json: e, status: :bad_request
    end

    private

    def favorites_params
        params.require(:favorite).permit(:user_favorite_product, :user_id, :product_id)
    end 
end

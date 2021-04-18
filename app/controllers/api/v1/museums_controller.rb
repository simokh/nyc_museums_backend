class Api::V1::MuseumsController < ApplicationController

    def index 
        museums = Museum.all
        render json: museums.to_json    
    end

    def create 
        museum = Museum.new(museum_params)
        if museum.save
        render json: museum.to_json, status: :accepted       
        else
            render json: {errors: museum.errors.full_messages}, status: :unprocessible_entity 
        end
    end

    private 

    def museum_params
        params.require(museum).permit(:name, :borough, :img_url)
    end
end

class Api::V1::MuseumsController < ApplicationController

    def index 
        museums = Museum.all
        render json: museums.to_json    
    end

    def create 

    end
end

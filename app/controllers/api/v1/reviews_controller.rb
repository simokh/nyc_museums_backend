class Api::V1::ReviewsController < ApplicationController


    def index 
        reviews = Review.all
        
        # options = {
        #     include: [:museum]
        # }
        render json: ReviewSerializer.new(reviews)
        
    end



    def create 
        review = Review.new(strong_params)
        # binding.pry
        if review.save
        render json: ReviewSerializer.new(review), status: :accepted
        else
            render json: {errors: review.errors.full_messages}, status: :unprocessible_entity 
        end
    end

    private


    def strong_params
        params.require(:review).permit(:review_post, :rating, :museum_id)
    end
end

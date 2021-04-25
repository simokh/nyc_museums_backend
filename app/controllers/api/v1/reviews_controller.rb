class Api::V1::ReviewsController < ApplicationController


    def index 
        reviews = Review.all
        
        # options = {
        #     include: [:museum]
        # }
        render json: ReviewSerializer.new(reviews)
        
    end



    def create 
        # byebug
        review = Review.new(strong_params)
        
        if review.save
        render json: ReviewSerializer.new(review), status: :accepted 
        else
            render json: {errors: review.errors.full_messages}, status: :unprocessible_entity 
        end
    end

    def show
        review = Review.find(params[:id])
        render json: ReviewSerializer.new(review)
    end


    def destroy
        review = Review.find(params[:id])
        review.destroy
        render json: {message: "Successfully deleted!"}
    end

    private 

    def strong_params
        params.require(:review).permit(:review_post, :rating, :museum_id)
    end

end

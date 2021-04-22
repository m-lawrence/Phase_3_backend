class ReviewsController < ApplicationController
    before_action :find_review, only: [:show, :edit, :update, :destroy]
    
    def index
        reviews = Review.all
        render json: reviews
    end

    def show
        review = Review.find(params[:id])
        render json: review
       
    end

    def create
        review = Review.create(review_params)
    end

    def edit
        
    end

    def update
        # byebug
        review.update(review_params)
        
        # review.update(description: params[:description], rating: params[:rating])
    end

    def destroy
        review.destroy
    end

    private

    def review_params
        params.permit(:user_id, :hike_id, :description, :rating)
    end

    def find_review
        review = Review.find(params[:id])
    end
end

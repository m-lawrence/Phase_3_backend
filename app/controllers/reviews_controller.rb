class ReviewsController < ApplicationController
    # before_action :find_review, only: [:show, :edit, :update, :destroy]
    
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
        render json: review
    end

    def edit
        review = Review.find(params[:id])
    end

    def update
        # byebug
        review = Review.find(params[:id])
        review.update(review_params)
        render json: review
        # review.update(description: params[:description], rating: params[:rating])
    end

    def destroy
        review = Review.find(params[:id])
        review.destroy
        render json: {}
    end

    private

    def review_params
        params.permit(:user_id, :hike_id, :description, :rating)
    end

    # def find_review
    #     review = Review.find(params[:id])
    # end
end

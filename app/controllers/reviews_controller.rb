class ReviewsController < ApplicationController
    before_action :find_review, only: [:show, :update, :destroy]
    def index
        reviews = Review.all
        render json: reviews
    end

    def show
        render json: review.to_json(:include =>{
            :user => {:except => [:updated_at]},
            :hike => {:except => [:updated_at]}
        })
    end

    def create
        review = Review.create!(review_params)
        render json :review
    end

    def edit
        review = Review.find(params[:id])
    end

    def update
        review.update(description: params[:description], rating: params[:rating])
    end

    def destroy
        review.destroy!
    end

    private

    def review_params
        params.permit(:user, :hike, :description, :rating)
    end

    def find_review
        review = Review.find(params[:id])
    end
end

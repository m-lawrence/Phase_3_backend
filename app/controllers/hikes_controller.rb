class HikesController < ApplicationController

    def index
        hikes = Hike.all
        render json: hikes
    end

    def show
        hike = Hike.find(params[:id])
        render json: hike.slice(:name, :location, :difficulty, :distance, :image, :averagerating)
        # render json: hike.splice(:created_at, :updated_at)
    end
end

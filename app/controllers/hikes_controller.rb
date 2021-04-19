class HikesController < ApplicationController

    def index
        hikes = Hike.all
        reder json: hikes
    end

    def show
        hike = Hike.find(params[:id])
        # render json: hike.slice(:name, :location, :difficulty, :distance, :image)
        render json: hike.splice(:created_at, :updated_at)
    end
end

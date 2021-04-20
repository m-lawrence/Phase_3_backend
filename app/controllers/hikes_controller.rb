class HikesController < ApplicationController

    def index
        hikes = Hike.all
        render json: hikes
    end

    def show
        hike = Hike.find(params[:id])
        render json: hike.slice(:name, :location, :difficulty, :distance, :image)
    end
end

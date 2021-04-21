class HikesController < ApplicationController

    def index
        hikes = Hike.all
        render json: hikes
        # byebug
    end

    def show
        hike = Hike.find(params[:id])
        render json: hike
    end
end


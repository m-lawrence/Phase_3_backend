class HikesController < ApplicationController

    def index
<<<<<<< HEAD
        hikes = Hike.all
        reder json: hikes
    end

    def show
        hike = Hike.find(params[:id])
        # render json: hike.slice(:name, :location, :difficulty, :distance, :image)
        render json: hike.splice(:created_at, :updated_at)
    end
=======
        hikes = Hike.all 
        render json: hikes
    end

>>>>>>> 401538b308ff808cc88c76bdca7dce33945507ba
end

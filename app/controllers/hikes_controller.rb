class HikesController < ApplicationController

    def index
        hikes = Hike.all
        render json: hikes
        # byebug
    end

    def show
        hike = Hike.find(params[:id])
        render json: hike.to_json(:include =>{
            :reviews => {:only => [:id, :username, :description, :rating]},
            :users => {:only => [:name]}
        })
    end
end

# .slice(:name, :location, :difficulty, :distance, :image, :averagerating, :reviews)
# render json: review.to_json(:include =>{
#                 :user => {:only => [:name, :age, :location, :myhikes, :id]},
#                 :hike => {:only => [:averagerating, :name, :location, :image, :difficulty, :distance, :id]}
#                 },
#                 :except =>[:updated_at] 
#             )
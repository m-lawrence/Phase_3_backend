class Hike < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews


    def average_rating 
        average = self.reviews.map{|hike| hike.rating}
        average.sum / average.length
    end

end
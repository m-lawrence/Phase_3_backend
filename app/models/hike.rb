class Hike < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews


    def averagerating 
        average = self.reviews.map{|hike| hike.rating}
        if average.length > 0 
            average.sum / average.length
        else 
            puts "sorry, no rating"
        end
    end

    def review
        self.reviews
    end

end
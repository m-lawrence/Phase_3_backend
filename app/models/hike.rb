class Hike < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews


    def averagerating 
        average = self.reviews.map{|hike| hike.rating}
        # byebug
        if average.length > 0 
            (average.sum.to_f / average.length).round()
        else 
            puts "sorry, no rating"
        end
    end

end
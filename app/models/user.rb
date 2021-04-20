class User < ApplicationRecord
    has_many :reviews
    has_many :hikes, through: :reviews

    def myhikes
        self.hikes
    end
end

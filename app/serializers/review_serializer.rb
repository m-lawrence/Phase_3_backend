class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :username, :description, :rating, :date #, :user, :hike
end

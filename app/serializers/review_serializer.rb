class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :username, :description, :rating, :date, :user_id, :hike_id
  
end

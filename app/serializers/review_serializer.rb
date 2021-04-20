class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :username, :description, :rating
end

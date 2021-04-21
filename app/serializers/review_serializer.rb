class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :username, :description, :rating, :date
end

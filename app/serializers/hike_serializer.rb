class HikeSerializer < ActiveModel::Serializer
  attributes :averageRating, :name, :location, :image, :difficulty, :distance
end

class HikeSerializer < ActiveModel::Serializer
  attributes :averagerating, :name, :location, :image, :difficulty, :distance, :id
end

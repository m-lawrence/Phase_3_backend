class HikeSerializer < ActiveModel::Serializer
  attributes :averagerating, :name, :location, :image, :difficulty, :distance, :id
  has_many :reviews
end

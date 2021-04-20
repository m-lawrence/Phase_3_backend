class HikeSerializer < ActiveModel::Serializer
  attributes :id,:name, :location, :image, :difficulty, :distance, :averagerating
  has_many :reviews
end

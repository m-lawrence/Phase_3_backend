class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :location, :myhikes
end

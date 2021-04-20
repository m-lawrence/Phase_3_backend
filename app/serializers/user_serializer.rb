class UserSerializer < ActiveModel::Serializer
  attributes :name, :age, :location, :myhikes, :id
end

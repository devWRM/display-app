class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :active
  has_many :schedules
end

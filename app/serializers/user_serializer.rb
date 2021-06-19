class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :active
  has_many :schedules
  has_many :cleanings, through: :schedules
  has_many :rooms, through: :schedules
end

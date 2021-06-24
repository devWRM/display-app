class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :isActive
  has_many :schedules
  has_many :types, through: :schedules
  has_many :rooms, through: :schedules

  # has_many :assignments, through: :schedules, 
end

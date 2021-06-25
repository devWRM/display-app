class RoomSerializer < ActiveModel::Serializer
  attributes :id, :name, :isActive
  has_many :schedules
  has_many :users, through: :schedules
  has_many :types, through: :schedules
end

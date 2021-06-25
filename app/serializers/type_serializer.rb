class TypeSerializer < ActiveModel::Serializer
  attributes :id, :name, :isActive

  has_many :schedules
  has_many :users, through: :schedules
  has_many :rooms, through: :schedules

  has_many :assignments
  has_many :cleanings, through: :assignments
end

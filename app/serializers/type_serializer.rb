class TypeSerializer < ActiveModel::Serializer
  attributes :id, :name, :isActive
  has_many :assignments
  has_many :cleanings, through: :assignments
end

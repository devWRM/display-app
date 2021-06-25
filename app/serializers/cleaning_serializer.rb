class CleaningSerializer < ActiveModel::Serializer
  attributes :id, :duty, :pass, :isActive
  has_many :assignments
  has_many :types, through: :assignments
end

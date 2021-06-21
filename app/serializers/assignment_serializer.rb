class AssignmentSerializer < ActiveModel::Serializer
  attributes :id, :isActive
  has_one :type
  has_one :cleaning
end

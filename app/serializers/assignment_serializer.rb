class AssignmentSerializer < ActiveModel::Serializer
  attributes :id, :isActive, :type_id, :cleaning_id
  # has_one :type
  # has_one :cleaning
end

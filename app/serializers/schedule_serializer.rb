class ScheduleSerializer < ActiveModel::Serializer
  attributes :id, :dated, :isActive, :user_id, :type_id, :room_id
end

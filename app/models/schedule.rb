class Schedule < ApplicationRecord
  belongs_to :user
  belongs_to :type
  belongs_to :room
end

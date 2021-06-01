class Schedule < ApplicationRecord
  belongs_to :user
  belongs_to :cleaning
  belongs_to :room
end

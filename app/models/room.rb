class Room < ApplicationRecord
    has_many :schedules

    has_many :users, through: :schedules
    has_many :cleanings, through: :schedules



end

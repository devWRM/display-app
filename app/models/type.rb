class Type < ApplicationRecord
    has_many :schedules
    has_many :assignments

    has_many :users, through: :schedules
    has_many :rooms, through: :schedules
    has_many :cleanings, through: :assignments



end

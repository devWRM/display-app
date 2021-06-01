class Cleaning < ApplicationRecord

    has_many :schedules
    has_many :users, through: :schedules
    has_many :rooms, through: :schedules

end

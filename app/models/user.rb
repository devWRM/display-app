class User < ApplicationRecord

    has_many :schedules
    has_many :cleanings, through: :schedules


    has_secure_password

end

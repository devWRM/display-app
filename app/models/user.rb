class User < ApplicationRecord
    # belongs_to :status

    has_many :schedules
    has_many :types, through: :schedules
    has_many :rooms, through: :schedules


    has_secure_password
    validates :name, :email, uniqueness: true, presence: true


end

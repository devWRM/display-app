class Cleaning < ApplicationRecord

    has_many :assignments
    has_many :types, through: :assignments

end

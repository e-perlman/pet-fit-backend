class Pet < ActiveRecord::Base
    has_many :pet_ownerships
    has_many :owners, through: :pet_ownerships
    has_many :pet_statuses
end

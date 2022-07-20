class Pet < ActiveRecord::Base
    has_many :pet_ownerships, dependent: :destroy
    has_many :owners, through: :pet_ownerships
    has_many :pet_statuses, dependent: :destroy
end

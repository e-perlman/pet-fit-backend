class PetOwnership < ActiveRecord::Base
    belongs_to :owner
    belongs_to :pet
end

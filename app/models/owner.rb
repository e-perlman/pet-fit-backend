class Owner < ActiveRecord::Base
    has_many :pet_ownerships
    has_many :pets, through: :pet_ownerships
    validates :first_name, presence: true
    validates :last_name, presence: true
    # validates :email, presence true, uniqueness: true
end

# validates :title, presence :true, uniqueness: true
# validates :user, presence: true

# for email----> validates :email, presence: true, uniqueness: true
# has_secure_password has methods--> password, passowrd=, authenticate
# encrypts password
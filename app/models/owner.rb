class Owner < ActiveRecord::Base
    has_many :pet_ownerships, dependent: :destroy
    has_many :pets, through: :pet_ownerships

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :age, numericality: {only_integer: true, greater_than: 16}
    validates :email, presence: true, uniqueness: true, format: {with: /\A(?<username>[^@\s]+)@((?<domain_name>[-a-z0-9]+)\.(?<domain>[a-z]{2,}))\z/i}
end


# for email----> validates :email, presence: true, uniqueness: true
# has_secure_password has methods--> password, passowrd=, authenticate
# encrypts password
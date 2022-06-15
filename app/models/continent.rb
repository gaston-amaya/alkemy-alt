class Continent < ApplicationRecord

    #validations
    validates :picture, :denomination, presence: true
    validates :denomination, uniqueness: {on: :create, message: 'A Continent with that name already exists' }
    validates :denomination, length: { in: 3..50, message: 'The Continent name length must be higher than 3 letters and has a maximum of 50 letters' }
    validates :picture, length: { maximum: 250, message: 'The maximum length for a picture link is 250 characters' }
    validates :denomination, format: { with: /\A[a-zA-Z0-9 ]+\z/, message: 'Only letters and numbers can be used' }

    #associations
    has_many :cities
    has_many :icons, through: :cities
end

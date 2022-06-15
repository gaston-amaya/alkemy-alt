class City < ApplicationRecord

    #validations
    validates :denomination, :picture, :land_size, :population, :continent_id, presence: true
    validates :denomination, uniqueness: {on: :create, message: 'A City with that name already exists' }
    validates :denomination, length: { in: 3..50, message: 'The City name length must be higher than 3 letters and has a maximum of 50 letters' }
    validates :picture, length: { maximum: 250, message: 'The maximum length for a picture link is 250 characters' }
    validates :land_size, :population length: { maximum: 10, message: 'The maximum length is 10 characters' }
    validates :land_size, :population, format: { with: /[0-9]/, message: 'Only numbers can be used' }
    validates :denomination, format: { with: /\A[a-zA-Z0-9 ]+\z/, message: 'Only letters and numbers can be used' }
    
    #associations
    has_many :icons
    belongs_to :continent
end

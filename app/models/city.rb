class City < ApplicationRecord
    validates :picture, presence: true
    validates :denomination, presence: true
    validates :denomination, uniqueness: true
    validates :land_size, presence: true
    validates :population, presence: true
    

    has_many :icons
    belongs_to :continent
end

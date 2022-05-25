class Continent < ApplicationRecord
    has_many :cities
    has_many :icons, through: :cities
end

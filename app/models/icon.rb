class Icon < ApplicationRecord

    #validations
    validates :picture, :denomination, :height, :story presence: true
    validates :denomination, uniqueness: {on: :create, message: 'A geographic icon with that name already exists' }
    validates :denomination, format: { with: /\A[a-zA-Z0-9 ]+\z/, message: 'Only letters and numbers can be used' }
    validates :picture, length: { maximum: 250, message: 'The maximum length for a picture link is 250 characters' }
    validates :name, length: { in: 3..100, message: 'The geographic icon name length must be higher than 3 letters and has a maximum of 100 letters' }
   
    
    #associations
    belongs_to :city
end

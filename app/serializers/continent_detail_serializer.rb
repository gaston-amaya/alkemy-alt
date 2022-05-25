class ContinentDetailSerializer < ActiveModel::Serializer
  attributes :id, :picture, :denomination
    
  has_many :cities
  has_many :icons, through: :cities
end

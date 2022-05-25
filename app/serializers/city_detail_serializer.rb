class CityDetailSerializer < ActiveModel::Serializer
  attributes :id, :picture, :denomination, :population

  has_many :icons
  belongs_to :continent
end

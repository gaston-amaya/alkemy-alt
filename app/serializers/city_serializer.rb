class CitySerializer < ActiveModel::Serializer
  attributes :id, :picture, :denomination, :population
end

class IconDetailSerializer < ActiveModel::Serializer
  attributes :id, :picture, :denomination
   
  belongs_to :city
end

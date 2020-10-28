class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :image, :description
  has_many :gatherings
end

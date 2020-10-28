class BookGroupSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :gatherings
  has_many :books
end
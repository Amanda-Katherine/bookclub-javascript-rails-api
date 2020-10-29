class BookGroupSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :gatherings
  has_many :books
  has_many :suggestions
  has_many :members
end
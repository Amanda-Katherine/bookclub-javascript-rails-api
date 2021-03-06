class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :image, :description
  has_many :gatherings
  has_many :book_groups
  has_many :suggestions
end
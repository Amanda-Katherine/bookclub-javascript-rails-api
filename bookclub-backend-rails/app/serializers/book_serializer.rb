class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :cover_url, :preview
  has_many :gatherings
end

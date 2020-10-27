class SuggestionSerializer < ActiveModel::Serializer
  attributes :id, :vote
  has_one :book
  has_one :book_group
end

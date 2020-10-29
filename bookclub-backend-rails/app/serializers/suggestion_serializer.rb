class SuggestionSerializer < ActiveModel::Serializer
  attributes :id, :vote, :book_id, :book_group_id
  belongs_to :book
  belongs_to :book_group 
end

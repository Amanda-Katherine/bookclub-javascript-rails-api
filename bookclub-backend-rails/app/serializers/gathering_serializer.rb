class GatheringSerializer < ActiveModel::Serializer
  attributes :id, :host, :date, :address, :time, :book_id, :book_group_id
  belongs_to :book
  belongs_to :book_group
end

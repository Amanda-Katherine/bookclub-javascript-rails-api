class GatheringSerializer < ActiveModel::Serializer
  attributes :id, :host, :date, :address, :time, :book_group_id
  belongs_to :book
end

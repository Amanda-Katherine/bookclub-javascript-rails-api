class GatheringSerializer < ActiveModel::Serializer
  attributes :id, :host, :date, :address, :time
end

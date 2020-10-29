class MemberSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :book_group_id
  belongs_to :book_group
end

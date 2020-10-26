class Gathering < ApplicationRecord
  belongs_to :book_group
  belongs_to :book #confirm this relationship
  has_many :members, through: :book_groups #confirm this relationship

end

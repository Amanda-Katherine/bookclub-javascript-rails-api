class Gathering < ApplicationRecord
  belongs_to :book_group #has many, belongs to
  belongs_to :book #through: :book_groups #confirm this relationship...through book groups?
  has_many :members, through: :book_groups #confirm this relationship
end

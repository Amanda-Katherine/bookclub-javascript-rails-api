class Book < ApplicationRecord
    has_many :book_groups, through: :gatherings
    has_many :gatherings
    has_many :suggestions
end

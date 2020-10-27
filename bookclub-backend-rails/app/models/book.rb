class Book < ApplicationRecord
    has_many :book_groups #many to many
    has_many :gatherings#, through: :book_groups #has many through
    # has_many :members, through: :book_groups #CONFRIM RELATIONSHIP
end

class Book < ApplicationRecord
    has_many :book_groups
    has_many :gatherings, through: :book_groups
    has_many :members, through: :book_groups 

end

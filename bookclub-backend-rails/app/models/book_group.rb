class BookGroup < ApplicationRecord
    has_many :books
    has_many :members
    has_many :gatherings
end

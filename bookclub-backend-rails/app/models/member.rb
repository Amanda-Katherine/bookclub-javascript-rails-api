class Member < ApplicationRecord
    has_many :books, through: :book_groups
    has_many :book_groups #confirm this relationship
    has_many :gatherings, through: :book_groups #confirm this relationship

    has_secure_password
end

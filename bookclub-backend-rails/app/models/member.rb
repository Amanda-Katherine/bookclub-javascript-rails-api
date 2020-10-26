class Member < ApplicationRecord
    # has_many :books, through: :book_groups #CONFRIM RELATIONSHIP
    belongs_to :book_group #has many, belongs to
    # has_many :gatherings, through: :book_groups #confirm this relationship

    has_secure_password
end

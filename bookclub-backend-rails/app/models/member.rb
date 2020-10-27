class Member < ApplicationRecord
    belongs_to :book_group #has many, belongs to

    has_secure_password
end

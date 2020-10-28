class BookGroup < ApplicationRecord
    has_many :gatherings 
    has_many :books, through: :gatherings 
    has_many :members 
    has_many :suggestions

    has_secure_password
end

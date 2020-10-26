class BookGroup < ApplicationRecord
    has_many :books #THROUGH GATHERINGS?  
    has_many :members #has many, belongs to
    has_many :gatherings #has many, belongs to

    has_secure_password
end

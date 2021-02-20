class Member < ApplicationRecord
  belongs_to :book_group 

  has_secure_password

end

class Member < ApplicationRecord
  belongs_to :book_group 

  has_secure_password

  validates :email, length: { minimum: 4 }
  validates :email, presence: true
  validates :email, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :password, presence: true
  validates :password, length: { minimum: 6 }
end


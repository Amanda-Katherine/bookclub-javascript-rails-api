class Gathering < ApplicationRecord
  belongs_to :book_group 
  belongs_to :book 
end

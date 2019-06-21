class Review < ApplicationRecord
  belongs_to :book
  belongs_to :user

  validates_presence_of :review_note, :book_id, :user_id
end

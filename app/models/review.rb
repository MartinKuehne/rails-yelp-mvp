class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :content, presence: true
  validates :rating, acceptance: { accept: [0, 1, 2, 3, 4, 5] }
end

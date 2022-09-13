class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  # incluye rango entre 0-5
  validates :rating, inclusion: { in: 0..5 }
  # que numericamente solo permite valores integer
  validates :rating, numericality: { only_integer: true }
end

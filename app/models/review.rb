class Review < ApplicationRecord
  belongs_to :restaurant

  NUMBERS = [0, 1, 2, 3, 4, 5]
  validates :restaurant, presence: true
  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: NUMBERS }, numericality: { only_integer: true }
end

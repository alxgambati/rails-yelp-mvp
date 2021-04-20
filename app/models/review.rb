class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: (0..5), message: "%{value} is not permited" },
    numericality: { only_integer: true }
end

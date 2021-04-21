class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  CATEGORIES = %w(chinese italian japanese french belgian)
  validates :category, presence: true, inclusion: { in: CATEGORIES,
    message: "%{value} is not permited category" }
end

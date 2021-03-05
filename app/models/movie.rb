class Movie < ApplicationRecord
  validates :title, presence: true
  validates :year, numericality: { greater_than: 1888 }
  validates :plot, length: { in: 25..255 }
  validates :director, presence: true
end

class Movie < ApplicationRecord
  has_many :actors
  has_many :genre_movies
  has_many :genres, through: :genre_movies
  
  validates :title, presence: true
  validates :year, numericality: { greater_than: 1888 }
  validates :plot, length: { in: 25..255 }
  validates :director, presence: true
end

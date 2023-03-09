class Movie < ApplicationRecord
  has_many :bookmarks

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
  # validates :poster_url, presence: true
  # validates :rating, presence: true, inclusion: { in: 0..10 }
end

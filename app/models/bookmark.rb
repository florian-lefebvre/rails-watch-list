class Bookmark < ApplicationRecord
  validates :comment, presence: true, length: { minimum: 6 }
  validates :movie, presence: true, uniqueness: { scope: :list }
  validates :list, presence: true

  belongs_to :movie
  belongs_to :list
end

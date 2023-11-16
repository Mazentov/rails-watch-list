class Movie < ApplicationRecord
  validates :title, :overview, presence: true
  validates :title, uniqueness: true

  has_many :bookmarks, dependent: :restrict_with_error
  has_many :lists, through: :bookmarks
end


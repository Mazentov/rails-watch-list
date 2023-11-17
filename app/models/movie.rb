# movie.rb
class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, uniqueness: true
  validates :title, format: { with: /(.|\s)*\S(.|\s)*/ }
  validates :overview, format: { with: /(.|\s)*\S(.|\s)*/ }
end

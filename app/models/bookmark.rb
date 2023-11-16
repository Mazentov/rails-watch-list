class Bookmark < ApplicationRecord
  validates :comment, length: { minimum: 6 }
  validates :movie, uniqueness: { scope: :list }

  belongs_to :movie
  belongs_to :list

  # Movie cannot be deleted if it is referenced in at least one bookmark
  # List deletion will delete associated bookmarks but not movies
  before_destroy :check_if_movie_referenced

  private

  def check_if_movie_referenced
    throw(:abort) if movie.bookmarks.any?
  end
end

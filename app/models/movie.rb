class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, :overview, uniqueness: true, presence: true



end




# You can’t delete a movie if it is referenced in at least one bookmark.
#

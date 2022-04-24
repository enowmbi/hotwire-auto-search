class Movie < ApplicationRecord
  validates :title, presence: true, length: { within: (5..100) }, uniqueness: true
end

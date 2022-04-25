class Movie < ApplicationRecord
  validates :title, presence: true, length: { within: (5..100) }, uniqueness: true

  scope :search_by_title, ->(title){ where("title ILIKE ?", "%#{title}%") }
end

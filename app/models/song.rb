class Song < ApplicationRecord
  validates :title, presence: true
  validates :artist, presence: true
  validates :body, presence: true
end

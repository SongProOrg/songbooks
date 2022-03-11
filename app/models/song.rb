class Song < ApplicationRecord
  validates :title, :artist, :body, presence: true
end

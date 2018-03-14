class Entry < ApplicationRecord
  dragonfly_accessor :image
  validates :title, :probability, presence: true
  belongs_to :roulette_wheel
end

class Entry < ApplicationRecord
  dragonfly_accessor :image
  validates :title, :probability, presence: true

end

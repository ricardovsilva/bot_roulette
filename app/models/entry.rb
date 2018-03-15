class Entry < ApplicationRecord
  dragonfly_accessor :image
  validates :title, :probability, presence: true
  belongs_to :roulette_wheel
  has_attached_file :sound
  validates_attachment_content_type :sound, :content_type => [
    'application/mp3',
    'application/x-mp3',
    'audio/mpeg',
    ['audio/mpeg'],
    'audio/mp3'
  ]
end

class RouletteWheel < ApplicationRecord
  belongs_to :user
  has_many :entries
  has_attached_file :spinning_sound
  validates_attachment_content_type :spinning_sound, :content_type => [
    'application/mp3',
    'application/x-mp3',
    'audio/mpeg',
    ['audio/mpeg'],
    'audio/mp3',
    'application/midi',
    'audio/midi'
  ]
  after_initialize :set_defaults

  def set_defaults
    self.width ||= 512;
    self.height ||= 512;
    self.speed ||= 10;
    self.duration ||= 3;
  end
end

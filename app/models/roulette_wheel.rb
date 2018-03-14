class RouletteWheel < ApplicationRecord
  belongs_to :user
  has_many :entry
end

class AddSpeedToRouletteWheel < ActiveRecord::Migration[5.1]
  def change
    add_column :roulette_wheels, :speed, :integer
  end
end

class AddSecondsToRouletteWheel < ActiveRecord::Migration[5.1]
  def change
    add_column :roulette_wheels, :duration, :integer
  end
end

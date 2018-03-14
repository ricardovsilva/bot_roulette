class AddRouletteWheelRefToEntries < ActiveRecord::Migration[5.1]
  def change
    add_reference :entries, :roulette_wheel, foreign_key: true
  end
end

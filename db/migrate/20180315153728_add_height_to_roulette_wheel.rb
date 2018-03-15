class AddHeightToRouletteWheel < ActiveRecord::Migration[5.1]
  def change
    add_column :roulette_wheels, :height, :integer
  end
end

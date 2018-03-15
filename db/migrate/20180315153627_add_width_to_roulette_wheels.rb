class AddWidthToRouletteWheels < ActiveRecord::Migration[5.1]
  def change
    add_column :roulette_wheels, :width, :integer
  end
end

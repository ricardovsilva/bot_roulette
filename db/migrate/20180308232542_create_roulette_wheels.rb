class CreateRouletteWheels < ActiveRecord::Migration[5.1]
  def change
    create_table :roulette_wheels do |t|
      t.references :user, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end

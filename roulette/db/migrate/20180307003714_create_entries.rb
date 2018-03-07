class CreateEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :entries do |t|
      t.string :title
      t.integer :probability
      t.string :image_uid

      t.timestamps
    end
  end
end

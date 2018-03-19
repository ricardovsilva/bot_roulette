class AddAttachmentSpinningSoundToRoulettes < ActiveRecord::Migration[5.1]
  def self.up
    change_table :roulette_wheels do |t|
      t.attachment :spinning_sound
    end
  end

  def self.down
    remove_attachment :roulette_wheels, :spinning_sound
  end
end

class AddSoundColumnToEntries < ActiveRecord::Migration[5.1]
  def change
    add_attachment :entries, :sound
  end
end

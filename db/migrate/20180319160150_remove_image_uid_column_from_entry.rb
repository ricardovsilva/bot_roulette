class RemoveImageUidColumnFromEntry < ActiveRecord::Migration[5.1]
  def change
    remove_column :entries, :image_uid
  end
end

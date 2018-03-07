class AddActiveToEntry < ActiveRecord::Migration[5.1]
  def change
    add_column :entries, :active, :boolean
  end
end

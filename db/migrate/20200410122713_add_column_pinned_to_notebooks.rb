class AddColumnPinnedToNotebooks < ActiveRecord::Migration[6.0]
  def change
    add_column :notebooks, :pinned, :boolean, :default => false
  end
end

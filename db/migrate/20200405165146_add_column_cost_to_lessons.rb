class AddColumnCostToLessons < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :cost, :string
  end
end

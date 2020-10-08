class AddColumnIndexToLessons < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :lesson_index, :integer
  end
end

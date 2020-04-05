class AddColumnToLessons < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :image_url, :string
  end
end

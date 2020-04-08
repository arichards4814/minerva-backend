class CreateNotebooksLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :notebooks_lessons do |t|
      t.integer :notebook_id
      t.integer :lesson_id

      t.timestamps
    end
  end
end

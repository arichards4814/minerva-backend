class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.integer :curriculum_id
      t.string :title
      t.string :material_url
      t.string :lesson_type
      t.string :description

      t.timestamps
    end
  end
end

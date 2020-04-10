class CreateCurriculumstags < ActiveRecord::Migration[6.0]
  def change
    create_table :curriculumstags do |t|
      t.integer :curriculum_id
      t.integer :tag_id

      t.timestamps
    end
  end
end

class CreateStudybuds < ActiveRecord::Migration[6.0]
  def change
    create_table :studybuds do |t|
      t.integer :user_id
      t.integer :lesson_id
      t.string :title

      t.timestamps
    end
  end
end

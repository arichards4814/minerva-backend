class CreateCurriculums < ActiveRecord::Migration[6.0]
  def change
    create_table :curriculums do |t|
      t.integer :user_id
      t.string :title
      t.string :description
      t.string :image_url

      t.timestamps
    end
  end
end

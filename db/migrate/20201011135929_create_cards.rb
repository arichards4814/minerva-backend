class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.integer :studybud_id
      t.string :question
      t.string :answer

      t.timestamps
    end
  end
end

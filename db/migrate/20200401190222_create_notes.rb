class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.integer :notebook_id
      t.integer :material_time_stamp
      t.string :content

      t.timestamps
    end
  end
end

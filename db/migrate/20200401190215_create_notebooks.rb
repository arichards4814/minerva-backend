class CreateNotebooks < ActiveRecord::Migration[6.0]
  def change
    create_table :notebooks do |t|
      t.string :title
      t.string :material_url
      t.integer :user_id

      t.timestamps
    end
  end
end

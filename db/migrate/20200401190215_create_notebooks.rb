class CreateNotebooks < ActiveRecord::Migration[6.0]
  def change
    create_table :notebooks do |t|
      t.string :title
      t.string :material_url
      t.integer :user_id
      t.integer :index_of_notebook

      t.timestamps
    end
  end
end

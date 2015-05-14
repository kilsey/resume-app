class CreateHighlights < ActiveRecord::Migration
  def change
    create_table :highlights do |t|
      t.text :highlight
      t.integer :work_id

      t.timestamps null: false
    end
  end
end

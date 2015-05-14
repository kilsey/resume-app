class CreateKeywords < ActiveRecord::Migration
  def change
    create_table :keywords do |t|
      t.text :detail
      t.integer :skill_id

      t.timestamps null: false
    end
  end
end

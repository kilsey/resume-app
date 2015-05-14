class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.text :name
      t.text :level
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

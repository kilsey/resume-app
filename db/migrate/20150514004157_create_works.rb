class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.text :company
      t.text :position
      t.text :website
      t.date :startDate
      t.date :endDate
      t.text :summary
      t.text :highlights
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

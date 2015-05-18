class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.text :institution
      t.text :area
      t.text :studyType
      t.date :startDate
      t.date :endDate
      t.float :gpa

      t.timestamps null: false
    end
  end
end

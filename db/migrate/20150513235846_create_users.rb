class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :name
      t.text :label
      t.text :email
      t.text :phone
      t.text :website
      t.text :summary

      t.timestamps null: false
    end
  end
end

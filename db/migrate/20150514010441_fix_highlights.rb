class FixHighlights < ActiveRecord::Migration
  def change
    rename_column :highlights, :highlight, :detail
  end
end

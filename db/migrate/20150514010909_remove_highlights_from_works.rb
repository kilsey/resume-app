class RemoveHighlightsFromWorks < ActiveRecord::Migration
  def change
    remove_column :works, :highlights, :text
  end
end

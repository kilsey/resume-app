class RemoveHighlightsFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :highlights, :text
  end
end

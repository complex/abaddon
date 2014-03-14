class RenameEventsToOccurences < ActiveRecord::Migration

  def change
    rename_table :events, :occurences
  end

end

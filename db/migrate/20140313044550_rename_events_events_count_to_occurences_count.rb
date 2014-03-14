class RenameEventsEventsCountToOccurencesCount < ActiveRecord::Migration

  def change
    rename_column :events, :events_count, :occurences_count
  end

end

class RenameEventsOccurencesCountToOccurrencesCount < ActiveRecord::Migration

  def change
    rename_column :events, :occurences_count, :occurrences_count
  end

end

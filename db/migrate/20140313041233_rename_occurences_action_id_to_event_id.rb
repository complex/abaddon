class RenameOccurencesActionIdToEventId < ActiveRecord::Migration

  def change
    rename_column :occurences, :action_id, :event_id
  end

end

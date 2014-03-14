class RenameActionsToEvents < ActiveRecord::Migration

  def change
    rename_table :actions, :events
  end

end

class RenameOccurrencesToOccurrences < ActiveRecord::Migration

  def change
    rename_table :occurences, :occurrences
  end

end

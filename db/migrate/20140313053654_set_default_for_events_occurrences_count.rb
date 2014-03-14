class SetDefaultForEventsOccurrencesCount < ActiveRecord::Migration

  def up

    change_column :events, :occurrences_count, :integer, default: 0

    Event.reset_column_information

    events = Event.where occurrences_count: nil
    events.each do |event|
      event.update_attributes occurrences_count: 0
    end

  end

  def down
    change_column :events, :occurrences_count, :integer, default: nil
  end

end

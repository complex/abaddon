class AddEventsCountToActions < ActiveRecord::Migration

  def change
    add_column :actions, :events_count, :integer
  end

end

class AddTokenToEventsAndOccurrences < ActiveRecord::Migration

  def change

    add_column :events, :token, :string
    add_column :occurrences, :token, :string

    Event.reset_column_information
    Occurrence.reset_column_information

    Event.all.map &:generate_token!
    Occurrence.all.map &:generate_token!

  end

end

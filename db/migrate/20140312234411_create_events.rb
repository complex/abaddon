class CreateEvents < ActiveRecord::Migration

  def change

    create_table :events do |table|
      table.references :action
      table.decimal :latitude, precision: 10, scale: 7
      table.decimal :longitude, precision: 10, scale: 7
      table.timestamps
    end

  end

end

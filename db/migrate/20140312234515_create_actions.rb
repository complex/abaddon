class CreateActions < ActiveRecord::Migration

  def change

    create_table :actions do |table|
      table.string :title
      table.timestamps
    end

  end

end

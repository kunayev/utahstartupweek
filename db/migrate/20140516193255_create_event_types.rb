class CreateEventTypes < ActiveRecord::Migration
  def change
    create_table :event_types do |t|
      t.string :type
      t.string :logo

      t.timestamps
    end
  end
end

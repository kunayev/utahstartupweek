class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :description
      t.string :title
      t.string :rsvp_link
      t.datetime :time_at
      t.references :event_type, index: true

      t.timestamps
    end
  end
end

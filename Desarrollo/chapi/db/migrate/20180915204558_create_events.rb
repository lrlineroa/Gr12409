class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :datetime_start
      t.datetime :datetime_end
      t.text :description
      t.string :place
      t.column :geofence, 'polygon'
      t.integer :requested_by
      t.integer :authorized_by
      t.integer :event_points
      t.integer :state
      t.references :season, foreign_key: true

      t.timestamps
    end
  end
end

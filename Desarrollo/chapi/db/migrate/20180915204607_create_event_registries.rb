class CreateEventRegistries < ActiveRecord::Migration[5.2]
  def change
    create_table :event_registries do |t|
      t.datetime :arrival
      t.datetime :departure
      t.integer :won_points
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true
    end
  end
end

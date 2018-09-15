class CreateUserRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :user_records do |t|
      t.integer :season_points
      t.references :user, foreign_key: true
      t.references :season, foreign_key: true
    end
  end
end

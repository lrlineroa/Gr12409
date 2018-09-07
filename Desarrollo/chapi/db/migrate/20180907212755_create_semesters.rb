class CreateSemesters < ActiveRecord::Migration[5.2]
  def change
    create_table :semesters do |t|
      t.string :name, :null => false
      t.datetime :datetime_start, :null => false
      t.datetime :datetime_end, :null => false

      t.timestamps
    end
  end
end

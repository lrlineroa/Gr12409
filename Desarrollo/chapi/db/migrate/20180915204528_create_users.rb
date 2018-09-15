class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.column :phone, 'bigint'
      # Example: t.column "first_name", :string
      t.integer :current_points

      t.timestamps
    end
  end
end

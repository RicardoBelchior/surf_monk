class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer :user_id
      t.integer :spot_id
      t.datetime :timestamp
      t.integer :score
      t.integer :wind
      t.integer :sandbank

      t.timestamps
    end
    add_index :reports, [:user_id, :timestamp]
  end
end

class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.string :name
      t.string :description
      t.string :gps
      t.string :website

      t.timestamps
    end
  end
end

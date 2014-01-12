class CreateBuoys < ActiveRecord::Migration
  def change
    create_table :buoys do |t|
      t.float :height_significant
      t.float :height_max
      t.float :period_avg
      t.float :period_max
      t.integer :swell_direction
      t.float :water_temperature

      t.timestamps
    end
  end
end

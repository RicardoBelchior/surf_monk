class CreateSurflineForecasts < ActiveRecord::Migration
  def change
    create_table :surfline_forecasts do |t|
      t.float :swell_height
      t.float :swell_height_sdev
      t.integer :custom_scale

      t.timestamps
    end
  end
end

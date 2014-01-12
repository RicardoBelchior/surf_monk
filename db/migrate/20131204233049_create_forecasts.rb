class CreateForecasts < ActiveRecord::Migration
  def change
    create_table :forecasts do |t|

      t.integer :surfline_forecast_id
      t.integer :buoy_id
      t.integer :tide_id

      t.timestamps
    end

    add_column :reports, :forecast_id, :integer
  end
end

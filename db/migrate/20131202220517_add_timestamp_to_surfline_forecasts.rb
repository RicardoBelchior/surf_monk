class AddTimestampToSurflineForecasts < ActiveRecord::Migration
  def change
  	add_column :surfline_forecasts, :timestamp, :datetime
  end
end

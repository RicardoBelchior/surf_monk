class AddSpotToSurflineForecasts < ActiveRecord::Migration
  def change
  	add_column :surfline_forecasts, :spot, :string
  end
end

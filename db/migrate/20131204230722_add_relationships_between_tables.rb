class AddRelationshipsBetweenTables < ActiveRecord::Migration
  def change
  	add_column :swell_infos, :surfline_forecast_id, :integer
  	add_column :wind_infos, :surfline_forecast_id, :integer
  end
end

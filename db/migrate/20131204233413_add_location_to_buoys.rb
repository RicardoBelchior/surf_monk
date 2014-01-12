class AddLocationToBuoys < ActiveRecord::Migration
  def change
  	add_column :buoys, :location, :string
  end
end

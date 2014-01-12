class ChangeSizeFormatInTides < ActiveRecord::Migration
  def change
  	change_column :tides, :size, :float
  end
end

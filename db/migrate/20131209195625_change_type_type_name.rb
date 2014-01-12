class ChangeTypeTypeName < ActiveRecord::Migration
  def change
  	rename_column :tides, :type, :tyde_type
  end
end

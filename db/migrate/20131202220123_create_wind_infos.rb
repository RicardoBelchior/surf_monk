class CreateWindInfos < ActiveRecord::Migration
  def change
    create_table :wind_infos do |t|
      t.float :strength
      t.integer :direction

      t.timestamps
    end
  end
end

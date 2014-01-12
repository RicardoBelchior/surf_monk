class CreateSwellInfos < ActiveRecord::Migration
  def change
    create_table :swell_infos do |t|
      t.float :height
      t.integer :direction
      t.integer :period

      t.timestamps
    end
  end
end

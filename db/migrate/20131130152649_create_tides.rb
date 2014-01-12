class CreateTides < ActiveRecord::Migration
  def change
    create_table :tides do |t|
      t.integer :size
      t.datetime :date
      t.string :type
      t.string :seaport

      t.timestamps
    end
  end
end

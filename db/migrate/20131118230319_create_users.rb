class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :surfer_or_spongy

      t.timestamps
    end
  end
end

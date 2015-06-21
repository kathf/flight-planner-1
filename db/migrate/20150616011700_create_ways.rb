class CreateWays < ActiveRecord::Migration
  def change
    create_table :ways do |t|
      t.string :leg_array, array: true, default: []
      t.timestamps null: false
    end
  end
end

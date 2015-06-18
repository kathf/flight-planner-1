class CreateWays < ActiveRecord::Migration
  def change
    create_table :ways do |t|
      t.string :start_airport
      t.string :end_airport
      t.timestamp :start_date
      t.timestamp :end_date
      t.timestamps null: false
    end
  end
end

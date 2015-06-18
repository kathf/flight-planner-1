class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.references :route
      t.references :way
      t.references :carrier
      t.timestamps null: false
    end
  end
end

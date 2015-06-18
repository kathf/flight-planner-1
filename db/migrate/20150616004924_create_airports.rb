class CreateAirports < ActiveRecord::Migration
  def change
    create_table :airports do |t|
      t.string :name
      t.string :city
      t.string :country
      t.string :code
      t.string :icao_code
      t.string :latitude
      t.string :longitude
      t.timestamps null: false
    end
  end
end

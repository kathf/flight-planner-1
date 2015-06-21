# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'csv'


CSV.foreach("db/seeds/carriers.csv", :headers => true) do |row|
  Carrier.create!(row.to_hash)
end

CSV.foreach("db/seeds/airports5.csv", :headers => true) do |row|
  Airport.create!(row.to_hash)
end

CSV.foreach("db/seeds/routes3.csv", :headers => true) do |row|
  row_hash = row.to_hash
  set_origin = Airport.find_by(code: row_hash["origin"])
  set_dest = Airport.find_by(code: row_hash["destination"])
  set_carrier = Carrier.find_by(code: row_hash["airline"])
  if set_origin && set_dest && set_carrier
    Route.create(destination_id: set_dest.id, origin_id: set_origin.id, carrier_id: set_carrier.id)
  end
end

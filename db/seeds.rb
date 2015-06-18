# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'csv'


CSV.foreach("db/seeds/routes.csv", :headers => true, :encoding => 'windows-1251:utf-8') do |row|
  Route.create!(row.to_hash)
end

CSV.foreach("db/seeds/carriers.csv", :headers => true, :encoding => 'windows-1251:utf-8') do |row|
  Carrier.create!(row.to_hash)
end

CSV.foreach("db/seeds/airports2.csv", :headers => true) do |row|
  Airport.create!(row.to_hash)
end
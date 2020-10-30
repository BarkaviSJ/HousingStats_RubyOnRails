# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Housingtypeprice.destroy_all
Location.destroy_all

#read table 1 csv from assets
locations = File.read("lib/assets/housingfiles/locations.csv").lines 
locations.shift # removing the headers from the csv file
locations.each { |location|region, area, longitude, latitude = location.split(","); Location.create(region: region, area_code: area, longitude: longitude, latitude: latitude) }

#read table 2 csv from assets and link this to table 1 using the unique ID created by Rails
housingtypes = File.read("lib/assets/housingfiles/UK_housing_price_different_types_two_years.csv").lines
housingtypes.shift
housingtypes.each{|house|month, year, region, area, detached, semidetached, terraced, flat = house.split(","); Housingtypeprice.create!( month: month, year: year, region: region, area_code: area, detached: detached, semidetached: semidetached, terraced: terraced, flat: flat, location_id: Location.find_by(region:region).id )}

#read table 3 csv from assets and link this to table 1 using the unique ID created by Rails
financingtypes = File.read("lib/assets/housingfiles/UK_average_housing_price_financingtypes_2014_2019.csv").lines
financingtypes.shift
financingtypes.each{|finance|month, year, region, area, average_price, cash_price, mortgage_price = finance.split(","); Financingtype.create!( month: month, year: year, region: region, area_code: area, average_price: average_price, cash_price: cash_price, mortgage_price: mortgage_price, location_id: Location.find_by(region:region).id) }

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Location.destroy_all
locations = File.read("lib/assets/housingfiles/locations.csv").lines 
locations.shift # removing the headers from the csv file
locations.each { |location|region, area, longitude, latitude = location.split(","); Location.create(region: region, area_code: area, longitude: longitude, latitude: latitude) }
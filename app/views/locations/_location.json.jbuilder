json.extract! location, :id, :region, :area_code, :latitude, :longitude, :created_at, :updated_at
json.url location_url(location, format: :json)

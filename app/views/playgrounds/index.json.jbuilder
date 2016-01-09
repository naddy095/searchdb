json.array!(@playgrounds) do |playground|
  json.extract! playground, :name, :address, :latitude, :longitude, :street_number, :route, :city, :country, :postal_code, :image, :image1
  json.url playground_url(playground, format: :json)
end

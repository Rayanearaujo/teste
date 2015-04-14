json.array!(@locais) do |local|
  json.extract! local, :id, :latitude, :longitude
  json.url local_url(local, format: :json)
end

json.array!(@crimes) do |crime|
  json.extract! crime, :id, :tipo_id, :local_id, :data, :hora, :descricao, :valorestimado
  json.url crime_url(crime, format: :json)
end

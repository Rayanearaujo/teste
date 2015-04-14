json.array!(@objetos) do |objeto|
  json.extract! objeto, :id, :crime_id, :vitima_id, :descricao
  json.url objeto_url(objeto, format: :json)
end

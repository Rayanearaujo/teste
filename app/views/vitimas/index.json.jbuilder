json.array!(@vitimas) do |vitima|
  json.extract! vitima, :id, :sexo, :idade, :email, :senha
  json.url vitima_url(vitima, format: :json)
end

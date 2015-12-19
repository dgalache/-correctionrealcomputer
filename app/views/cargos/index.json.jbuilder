json.array!(@cargos) do |cargo|
  json.extract! cargo, :id, :tipo, :salario, :ch
  json.url cargo_url(cargo, format: :json)
end

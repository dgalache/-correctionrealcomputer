json.array!(@empregadors) do |empregador|
  json.extract! empregador, :id, :nome, :telefone, :endereco, :cnpj
  json.url empregador_url(empregador, format: :json)
end

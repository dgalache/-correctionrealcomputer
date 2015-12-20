json.array!(@ordems) do |ordem|
  json.extract! ordem, :id, :equipamento, :defeito, :marca, :descricao, :status, :valor, :cliente_id, :empregado_id
  json.url ordem_url(ordem, format: :json)
end

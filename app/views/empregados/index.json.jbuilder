json.array!(@empregados) do |empregado|
  json.extract! empregado, :id, :nome, :telefone, :endereco, :dataadm, :cpf, :rg, :cargo_id
  json.url empregado_url(empregado, format: :json)
end

json.array!(@funcaos) do |funcao|
  json.extract! funcao, :id, :tipo, :salario, :ch
  json.url funcao_url(funcao, format: :json)
end

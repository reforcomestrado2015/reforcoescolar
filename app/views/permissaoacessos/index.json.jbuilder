json.array!(@permissaoacessos) do |permissaoacesso|
  json.extract! permissaoacesso, :id, :descricao
  json.url permissaoacesso_url(permissaoacesso, format: :json)
end

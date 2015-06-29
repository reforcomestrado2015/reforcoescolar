json.array!(@professors) do |professor|
  json.extract! professor, :id, :login, :email, :password, :nome, :cpf, :fone1, :fone2, :logradouro, :cidade, :uf, :cep, :valorHoraAula, :qtdvotos, :qtdpontos
  json.url professor_url(professor, format: :json)
end

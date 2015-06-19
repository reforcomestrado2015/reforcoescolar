json.array!(@alunos) do |aluno|
  json.extract! aluno, :id, :login, :email, :senha, :nome, :cpf, :fone1, :fone2, :logradouro, :cidade, :uf, :cep, :escola
  json.url aluno_url(aluno, format: :json)
end

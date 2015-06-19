json.array!(@disciplinas) do |disciplina|
  json.extract! disciplina, :id, :nome, :serie, :nivel
  json.url disciplina_url(disciplina, format: :json)
end

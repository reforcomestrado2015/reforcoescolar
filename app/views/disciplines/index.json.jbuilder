json.array!(@disciplines) do |discipline|
  json.extract! discipline, :id, :title, :location, :description
  json.url discipline_url(discipline, format: :json)
end

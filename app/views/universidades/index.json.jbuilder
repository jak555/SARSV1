json.array!(@universidades) do |universidade|
  json.extract! universidade, :id, :nombre
  json.url universidade_url(universidade, format: :json)
end

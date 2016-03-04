json.array!(@paises) do |paise|
  json.extract! paise, :id, :nombre
  json.url paise_url(paise, format: :json)
end

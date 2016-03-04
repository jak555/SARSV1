json.array!(@cuestionarios) do |cuestionario|
  json.extract! cuestionario, :id, :nombre, :prefijo, :desc
  json.url cuestionario_url(cuestionario, format: :json)
end

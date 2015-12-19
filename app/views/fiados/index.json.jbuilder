json.array!(@fiados) do |fiado|
  json.extract! fiado, :id, :nombre, :direccion, :rfc, :telefono, :email
  json.url fiado_url(fiado, format: :json)
end

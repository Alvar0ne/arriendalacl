json.extract! publication, :id, :titulo, :precio, :clasificacion, :tipo, :superficie, :dormitorio, :baño, :estacionamiento, :descripcion, :created_at, :updated_at
json.url publication_url(publication, format: :json)

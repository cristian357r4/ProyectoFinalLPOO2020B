json.extract! persona, :id, :nombre, :paterno, :materno, :sexo, :telefono, :created_at, :updated_at
json.url persona_url(persona, format: :json)

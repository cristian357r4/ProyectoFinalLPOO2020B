json.extract! paciente, :id, :nombre, :paterno, :materno, :sexo, :telefono, :created_at, :updated_at
json.url pacientes_url(paciente, format: :json)

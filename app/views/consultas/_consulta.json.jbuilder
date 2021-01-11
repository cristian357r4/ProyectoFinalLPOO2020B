json.extract! consulta, :id, :paciente_id, :nutriologo_id, :anotaciones, :created_at, :updated_at
json.url consulta_url(consulta, format: :json)

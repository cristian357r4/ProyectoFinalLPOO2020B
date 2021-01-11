json.extract! consulta, :id, :nutriologo_id, :paciente_id, :signo_id, :problema_id, :anotaciones, :created_at, :updated_at
json.url consulta_url(consulta, format: :json)

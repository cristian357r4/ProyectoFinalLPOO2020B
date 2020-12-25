json.extract! paciente, :id, :domicilio, :civil, :nss, :edad, :peso, :talla, :imc, :t_sangre, :created_at, :updated_at
json.url paciente_url(paciente, format: :json)

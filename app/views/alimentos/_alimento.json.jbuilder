json.extract! alimento, :id, :nombre, :grupo_alimenticio, :subgrupo_alimenticio, :caracteristicas, :frecuencia, :racionexporcion, :mxcasa, :nutrientes, :created_at, :updated_at
json.url alimento_url(alimento, format: :json)

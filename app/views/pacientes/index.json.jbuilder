json.set! :data do
  json.array! @pacientes do |persona|
    json.partial! 'pacientes/paciente', paciente: persona
    json.url  "
              #{link_to 'Mostrar', mostrar_paciente_path(persona.id), class: 'btn btn-primary' }
              #{link_to 'Eliminar', eliminar_paciente_path(persona.id), method: :delete, data: { confirm: 'Estas seguro?' }, class: 'btn btn-danger' }
              "
  end
end

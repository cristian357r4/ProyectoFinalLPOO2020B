json.set! :data do
  json.array! @personas do |persona|
    json.partial! 'personas/persona', persona: persona
    json.url  "
              #{link_to 'Mostrar', persona }
              #{link_to 'Editar', edit_persona_path(persona)}
              #{link_to 'Eliminar', persona, method: :delete, data: { confirm: 'Estas seguro?' }}
              "
  end
end
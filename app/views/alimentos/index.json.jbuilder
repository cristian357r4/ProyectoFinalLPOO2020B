json.set! :data do
  json.array! @alimentos do |alimento|
    json.partial! 'alimentos/alimento', alimento: alimento
    json.url  "
              #{link_to 'Mostrar', alimento , class: 'btn btn-primary' }
              #{link_to 'Editar', edit_alimento_path(alimento),  class: 'btn btn-success' }
              #{link_to 'Eliminar', alimento, method: :delete, data: { confirm: 'Estas Seguro?' },  class: 'btn btn-danger'  }
              "
  end
end

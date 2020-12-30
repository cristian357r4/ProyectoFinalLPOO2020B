json.set! :data do
  json.array! @suplementos do |suplemento|
    json.partial! 'suplementos/suplemento', suplemento: suplemento
    json.url  "
              #{link_to 'Mostrar', suplemento , class: 'btn btn-primary' }
              #{link_to 'Editar', edit_suplemento_path(suplemento),  class: 'btn btn-success' }
              #{link_to 'Eliminar', suplemento, method: :delete, data: { confirm: 'Estas Seguro?' },  class: 'btn btn-danger'  }
              "
  end
end

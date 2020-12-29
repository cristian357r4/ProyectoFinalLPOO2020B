json.set! :data do
  json.array! @pruebas do |prueba|
    json.partial! 'pruebas/prueba', prueba: prueba
    json.url  "
              #{link_to 'Mostrar', prueba , class: 'btn btn-primary' }
              #{link_to 'Editar', edit_prueba_path(prueba),  class: 'btn btn-success' }
              #{link_to 'Eliminar', prueba, method: :delete, data: { confirm: 'Estas Seguro?' },  class: 'btn btn-danger'  }
              "
  end
end
json.set! :data do
  json.array! @problemas do |problema|
    json.partial! 'problemas/problema', problema: problema
    json.url  "
              #{link_to 'Mostrar', problema , class: 'btn btn-primary' }
              #{link_to 'Editar', edit_problema_path(problema),  class: 'btn btn-success' }
              #{link_to 'Eliminar', problema, method: :delete, data: { confirm: 'Estas Seguro?' },  class: 'btn btn-danger'  }
              "
  end
end

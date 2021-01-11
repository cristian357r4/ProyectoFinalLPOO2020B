json.set! :data do
  json.array! @consultas do |consulta|
    json.partial! 'consultas/consulta', consulta: consulta
    json.url  "
              #{link_to 'Mostrar', consulta , class: 'btn btn-primary' }
              #{link_to 'Editar', edit_consulta_path(consulta),  class: 'btn btn-success' }
              #{link_to 'Eliminar', consulta, method: :delete, data: { confirm: 'Estas Seguro?' },  class: 'btn btn-danger'  }
              "
  end
end

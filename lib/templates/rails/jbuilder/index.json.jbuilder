json.set! :data do
  json.array! @<%= plural_table_name %> do |<%= singular_table_name %>|
    json.partial! '<%= plural_table_name %>/<%= singular_table_name %>', <%= singular_table_name %>: <%= singular_table_name %>
    json.url  "
              #{link_to 'Mostrar', <%= singular_table_name %> , class: 'btn btn-primary' }
              #{link_to 'Editar', edit_<%= singular_route_name %>_path(<%= singular_table_name %>),  class: 'btn btn-success' }
              #{link_to 'Eliminar', <%= singular_table_name %>, method: :delete, data: { confirm: 'Estas Seguro?' },  class: 'btn btn-danger'  }
              "
  end
end

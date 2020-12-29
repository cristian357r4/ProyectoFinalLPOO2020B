json.set! :data do
  json.array! @tests do |test|
    json.partial! 'tests/test', test: test
    json.url  "
              #{link_to 'Mostrar', test , class: 'btn btn-primary'}
              #{link_to 'Editar', edit_test_path(test),class: 'btn btn-success'}
              #{link_to 'Eliminar', test, method: :delete, data: { confirm: 'Are you sure?' }, class: 'btn btn-danger'}
              "
  end
end
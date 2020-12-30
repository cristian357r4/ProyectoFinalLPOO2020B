json.set! :data do
  json.array! @signos do |signo|
    json.partial! 'signos/signo', signo: signo
    json.url  "
              #{link_to 'Mostrar', signo , class: 'btn btn-primary' }
              #{link_to 'Editar', edit_signo_path(signo),  class: 'btn btn-success' }
              #{link_to 'Eliminar', signo, method: :delete, data: { confirm: 'Estas Seguro?' },  class: 'btn btn-danger'  }
              "
  end
end

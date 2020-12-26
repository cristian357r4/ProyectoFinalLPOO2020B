# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
    validator = $('#formulario_pacientes').validate
        rules:
            'persona[nombre]':
                required: true

        messages:
            'persona[nombre]':
                required: 'Este campo es requerido'


$(document).ready(ready)
$(document).on('turbolinks:load', ready)

$ ->
  $('#add').click (e)->
    e.preventDefault()
    sticky = '<div class="sticky">' +
              '<textarea class="note"></textarea>' + 
              '<a href="#" name="delete">delete</a>' +
             '</div>'
    $('#stickies').append(sticky)

  $(document).on 'change', '.sticky .note', ->
    owner = window.location.pathname.replace(/^\//, '') 
    $.post "/#{owner}/notes", 
      owner: owner 
      text: $(@)[0].value

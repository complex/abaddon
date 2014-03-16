$(document).ready ->

  $('a[href=#new]').on 'click', ->
    $('html, body').animate {
      scrollTop: $(document).height() - $(window).height()
    }, {
      duration: 500,
      complete: ->
        $('#new input:visible:first').focus()
    }
    return false
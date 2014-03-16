$(document).ready ->

  $('a[href=#new]').on 'click', ->
    $('body').animate {
      scrollTop: document.height - window.innerHeight
    }, {
      duration: 500,
      complete: ->
        $('#new input:visible:first').focus()
    }
    return false
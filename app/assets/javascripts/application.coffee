#= require jquery
#= require jquery_ujs
#= require_tree .



class window.Geolocation

  @request: ->
    if navigator.geolocation
      navigator.geolocation.getCurrentPosition @success, @error
      return true
    else
      return false

  @success: (response) ->
    console.log "--- success"
    console.log response

  @error: (response) ->
    console.log "--- error"
    console.log response



$(document).ready ->

  $('a.location').on 'click', ->
    Geolocation.request()
    return false

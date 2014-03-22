#= require jquery
#= require jquery_ujs
#= require_self
#= require_tree .
#= stub buttons



$(document).ready ->


  $('a.location').on 'click', ->
    Geolocation.request()
    return false


  $('a[href=#]').on 'click', ->
    $('html, body').animate {
      scrollTop: 0
    }, 500
    return false

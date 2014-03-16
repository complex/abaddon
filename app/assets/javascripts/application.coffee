#= require jquery
#= require jquery_ujs
#= require_tree .






$(document).ready ->



  $('a.location').on 'click', ->
    Geolocation.request()
    return false



  $('a[href=#]').on 'click', ->
    $('body').animate {
      scrollTop: 0
    }, 500
    return false
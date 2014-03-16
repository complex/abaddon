$(document).ready ->

  if $('.occurrences#index').length

    $('input.location').on 'click', ->
      Geolocation.request {
        start: Occurrence.start_loading,
        end: Occurrence.end_loading,
        success: Occurrence.fill_and_submit,
        error: Occurrence.submit
      }
      return false



class window.Occurrence

  @start_loading: ->
    $('input.location')
      .val('ellipsis')
      .addClass('loading')

  @end_loading: ->
    $('input.location')
      .val('plus     location')
      .removeClass('loading')

  @fill_and_submit: (response) ->
    $('#occurrence_latitude').val response.coords.latitude
    $('#occurrence_longitude').val response.coords.longitude
    $('form.new_occurrence').submit()

  @submit: ->
    $('form.new_occurrence').submit()



class window.Geolocation

  @request: (options = {}) ->

    @options = options

    if navigator.geolocation
      @options.start()
      navigator.geolocation.getCurrentPosition @success, @error
      return true
    else
      return false

  @success: (response) =>
    @options.success response
    @options.end()

  @error: (response) =>
    @options.error response
    @options.end()

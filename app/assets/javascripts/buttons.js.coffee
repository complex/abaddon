# Replaces submit buttons with fakes because icon fonts and submit buttons don't get along so well

$('input[type=submit]').each ->

  $element = $(this)
  classes = $element.attr 'class'
  data = $element.data()

  if $element.data 'label'
    text = $element.data 'label'
  else
    text = $element.val()

  $new_element = $("<div class='submit button #{ classes or '' }'>#{ text }</div>")

  $new_element.data data
  $new_element.on 'click', ->
    if data.confirm
      return unless confirm data.confirm
    $(this).closest('form').submit()

  $element.after $new_element
  $element.remove()

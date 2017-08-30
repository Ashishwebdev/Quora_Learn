# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->
  $("#body").on "keypress", (e) ->
    if e && e.keyCode ==13
      e.preventDefault()
      body = $("#body")
      $(this).submit()
      body.val("")




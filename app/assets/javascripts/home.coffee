# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
    rankBoxes = $('.rank-box')
    rankBoxes.each (idx) ->
        $(this).fadeTo('slow', 1 - idx * 0.03)
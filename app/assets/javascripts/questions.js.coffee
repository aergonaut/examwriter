# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$("input[name='question[type]']").on "change", ->
  val = $(this).val()
  if val == "MultipleChoiceQuestion"
    $(".multiple-choice").show()
  else
    $(".multiple-choice").hide()

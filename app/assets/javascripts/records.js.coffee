# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('[rel~=tooltip]').tooltip()
  $('input.date_picker').datepicker
    dateFormat: 'yy-mm-dd'
    changeYear: true
    yearRange: 'c-100:c+10'
  DependentFields.bind()

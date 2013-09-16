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


  $('.chosen-select').chosen
    width: '200px'
    no_results_text: "Add Spatial Coverage"

  $('form').on 'click', '.no-results', (e) ->
    e.stopPropagation()
    spatial_coverage_name = $(this).find('span').text()
    $.post(
      '/spatial_coverage.json'
      {spatial_coverage: {name: spatial_coverage_name}}
      (data) ->
        $('#spatial_coverage_id').append(
          '<option value="' + data.id + '">' + data.name + '</option>'
        ).val('"' + data.id + '"').trigger('chosen:updated')
      'json'
    )
    false


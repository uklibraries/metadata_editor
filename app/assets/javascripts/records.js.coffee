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

  $('input[name="record[spatial_coverage_ids][]"].chosen-select').chosen
    width: '200px'
    no_results_text: "Add Spatial Coverage"

  $('#record_creators_ids_chosen .chosen-select').chosen                                                                     
    width: '200px'
    no_results_text: "Add Creator"

  $('form').on 'click', '#record_spatial_coverage_ids_chosen .no-results', (e) ->
    e.stopPropagation()
    spatial_coverage_name = $(this).find('span').text()
    repository_id = $('#record_repository_id').val()
    $.post(
      '/spatial_coverages.json'
      {spatial_coverage: {name: spatial_coverage_name, repository_id: repository_id}}
      (data) ->
        $('#record_spatial_coverage_ids').append(
          '<option value="' + data.id + '">' + data.name + '</option>'
        ).find('option[value="' + data.id + '"]').prop('selected', true)
        $('#record_spatial_coverage_ids').trigger('chosen:updated')
      'json'
    )
    false

   $('form').on 'click', '#record_creator_ids_chosen .no-results', (e) ->
    e.stopPropagation()
    creator_name = $(this).find('span').text()
    repository_id = $('#record_repository_id').val()
    $.post(
        '/creator.json'
      {spatial_coverage: {name: creator_name, repository_id: repository_id}}
      (data) ->
        $('#creator_ids').append(
          '<option value="' + data.id + '">' + data.name + '</option>'
        ).find('option[value="' + data.id + '"]').prop('selected', true)
        $('#record_creator_ids').trigger('chosen:updated')
      'json'
    )
    false

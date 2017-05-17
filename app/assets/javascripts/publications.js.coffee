


jQuery ->

 comunas = $('#publication_comuna_id').html()
 $('#publication_region_id').change ->
   region = $('#publication_region_id :selected').text()
   options = $(comunas).filter("optgroup[label='#{region}']").html()
   if options
   	$('#publication_comuna_id').html(options)
    $('#publication_comuna_id').parent().show()
   else
   	$('#publication_comuna_id').empty()
    $('#publication_comuna_id').parent().hide()


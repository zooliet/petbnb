# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
	$('#reservation_from_date').datepicker
		dateFormat:'yy-mm-dd'
		defaultDate: "+1w",
		changeMonth: true,
		numberOfMonths: 2,
		onClose: (selectedDate) -> 
			$("#reservation_to_date").datepicker( "option", "minDate", selectedDate )

	$('#reservation_to_date').datepicker
		dateFormat:'yy-mm-dd'
		defaultDate: "+1w",
		changeMonth: true,
		numberOfMonths: 2,
		onClose: ( selectedDate ) ->
			$("#reservation_from_date").datepicker( "option", "maxDate", selectedDate )
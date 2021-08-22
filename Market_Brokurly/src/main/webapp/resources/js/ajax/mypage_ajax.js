/**
 * 
 */

$(document).ready(function(e) {
	
	$('#orderlist').click(() => {
		$('#orderlistForm').submit();
	});
	
	$('#destination').click(() => {
		$('#destinationForm').submit();
	});
	
	$('#point').click(() => {
		$('#pointForm').submit();
	});
});
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
	
	$('#review').click(() => {
		$('#reviewForm').submit();
	});
	
	$('#inquiry').click(() => {
		$('#inquiryForm').submit();
	});
	
	$('#point').click(() => {
		$('#pointForm').submit();
	});
	
	$('#coupon').click(() => {
		$('#couponForm').submit();
	});
	
});
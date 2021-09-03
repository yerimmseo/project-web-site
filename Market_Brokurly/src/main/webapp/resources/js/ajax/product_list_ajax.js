$(document).ready(function(e) {
	$('.subs').click(function(){
		$.ajax({
	        type : "GET",
	        url : "/brokurly/products/product_subcate",
			data: {
				"subcate_id": $(this).attr('value')
			},
	        error : function() {
		
	        },
	        success : function() {
				location.href="http://localhost:8080/brokurly/products/product_list";
	        }
		})
    });
});


$(document).ready(function(e) {
	$('.basket').click(function(){
		$.ajax({
	        type : "GET",
	        url : "/brokurly/products/product_cart",
			data: {
				"product_id": $(this).attr('value').trim()
			},
	        success : function(data) {
				alert(data);
	        },
	        error : function() {
	         
	        }
		})
    });
});


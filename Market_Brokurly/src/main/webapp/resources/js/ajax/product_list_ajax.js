$(document).ready(function(e) {
	$('.subs').click(function(){
		$.ajax({
	        type : "GET",
	        url : "/brokurly/products/product_subcate",
			data: {
				"subcate_id": $(this).attr('value')
			},
	        error : function() {
	            alert('통신실패!!');
	        },
	        success : function() {
				console.log('성공!!!!!!	');
				location.href="http://localhost:8080/brokurly/products/product_list";
	        }
		})
    });
});


$(document).ready(function(e) {
	$('.basket').click(function(){
		$.ajax({
	        type : "GET",
	        url : "/brokurly/products/product_subcate",
			data: {
				"product_id": $(this).attr('value')
			},
	        error : function() {
	            alert('통신실패!!');
	        },
	        success : function() {
				alert('장바구니에 상품을 담았습니다.')
				//location.href="http://localhost:8080/brokurly/products/product_list";
	        }
		})
    });
});
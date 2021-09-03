/* ----------------------------------  MD 전체보기 가져오기 ---------------------------------- */
$(document).ready(function(e) {
	$('#link_cate').click(function(){
		$.ajax({
	        type : "GET",
	        url : "/brokurly/products/product_main_id",
			data: {
				"maincate_id": $(this).attr('value')
			},
	        error : function() {
	            alert('통신실패!!');
	        },
	        success : function() {
				location.href="http://localhost:8080/brokurly/products/product_list";
	        }
		})
    });
});


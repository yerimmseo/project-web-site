/**
 * 
 */
$(document).ready(function(e) {
	$('#find_id_btn').click(function() {

		$.ajax({
			url : "/brokurly/customer/getId",
			type : "GET",
			data : {
				"customer_name" : $('#customer_name').val(),
				"customer_email" : $('#customer_email').val()
			},
			success : function(data) {
				if (data == '') {
					alert("잘못된 정보입니다.");
					return;
				} else {
					alert("id는[" + data + "]입니다.");
					$('#getidForm').submit();
				}
			},
			error : function() {
				alert("서버오류");
			}
		});
	});

	$('#find_pw_btn').click(function() {

		$.ajax({
			url : "/brokurly/customer/getPw",
			type : "GET",
			data : {
				"customer_name" : $('#customer_name').val(),
				"customer_id" : $('#customer_id').val(),
				"customer_email" : $('#customer_email').val()
			},
			success : function(data) {
				if (data == '') {
					alert("잘못된 정보입니다.");
					return;
				} else {
					alert("비밀번호 변경페이지로 이동합니다.");
					$('#getpwForm').submit();
				}
			},
			error : function() {
				alert("서버오류");
			}
		});
	});
});
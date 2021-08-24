/**
 * 
 */
 $(document).ready(function(e) {
	$('#login_btn').click(function(){

		$.ajax({
			url: "/brokurly/customer/login",
			type: "GET",
			data: {
				"customer_id": $('#customer_id').val(),
				"customer_pw": $('#customer_pw').val()
			},
			success:function(data) {
				if (data == '') {
					alert("아이디 또는 패스워드 오류");
					return;
				} else {
					alert(data + "님 환영합니다.");
					$('#login_form').submit();
				}
			},
			error:function() {
				alert("서버오류");
			}
		});
	}); 

	$('#signup').click(function() {
		$('#signupForm').submit();
	});

	$('#findid').click(function() {
		$('#findidForm').submit();
	});

	$('#findpw').click(function() {
		$('#findpwForm').submit();
	});

});
/**
 * 
 */
$(document).ready(function(e) {
	var chkPassword = new RegExp("^(?=.*[0-9])(?=.*[a-z])(?=.*[$@!%*#?&])[a-z0-9$@!%*#?&]{8,16}$");
	$('#change_pw_btn').click(function() {
		if ($('#customer_pw').val().length < 8 || $('#customer_pw').val().length > 16) {
			alert("비밀번호는 8자리 ~ 16자리 이내로 입력해주세요.");
			$('#customer_pw').focus();
			return;
		} 

		if (!chkPassword.test($('#customer_pw').val())) {
			alert("영문, 숫자, 특수문자를 혼합하여 입력해주세요.");
			$('#customer_pw').focus();
			return;
		} if ($('#customer_pw').val() != $('#customer_pw_confirm').val()) {
			alert("비밀번호가 일치하지않습니다.");
			return;
		} else {
			$.ajax({
				url: "/brokurly/customer/changePw",
				type: "GET",
				data: {
					"customer_pw": $('#customer_pw').val()
				},
				success:function(data) {
					if (data == '') {
						alert("비밀번호 변경에 성공하였습니다.");
						$('#changepwForm').submit();						
					}
				},
				error:function(){
					alert("서버오류");
				}
			});
		}
	});
});
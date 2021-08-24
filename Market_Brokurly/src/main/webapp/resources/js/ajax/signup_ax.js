/**
 * 
 */

 $(document).ready(function(e) {
	var id_check_bool = false;
	var email_check_bool = false;
	var tel_check_bool = false;
	var number_check_bool = false;
	var agreement_box1_bool = false;
	var agreement_box2_bool = false;
	var agreement_box3_bool = false;

	var replaceNotInt = /[^0-9]/gi;
	var replaceNotString = /[0-9a-zA-Z$@!%*#?&]/gi;

	var tel_numberCheck = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
	var emailCheck = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i; 
	var idcheck_eng = /^[a-z0-9]{1,13}$/;
	var idcheck_kor = /^[가-힣ㄱ-ㅎ]{1,13}$/;
	var chkPassword = new RegExp("^(?=.*[0-9])(?=.*[a-z])(?=.*[$@!%*#?&])[a-z0-9$@!%*#?&]{8,16}$");
	var namecheck_kor = /[^가-힣]+/g;
	

	// 아이디를 타이핑 할 때 마다 함수 발생
	$('#customer_id').keyup(function() {
		var id_inputLength = $(this).val().length; // 입력한 값의 글자수
		var id_remain = 13 - id_inputLength;  // 13글자에서 남은 글자수
		
		
		if (idcheck_kor.test($(this).val())) {
			('#idcheck_length').css('color', 'red');
		}
		
		if (id_remain <= 13) {
			$('#idcheck_length').css('color', 'red');
		}	

		if (id_remain >= 0 && id_remain < 8 && idcheck_eng.test($(this).val())) {
			$('#idcheck_length').css('color', 'green');
		}

	});

	// 비밀번호를 타이핑 할 때 마다 함수 발생
	$('#customer_pw').keyup(function() {
		var pw_inputLength = $(this).val().length;
		var pw_remain = 16 - pw_inputLength;
		if (!chkPassword.test($(this).val())) {
			$('#pwcheck_language').css('color', 'red');
		}
		
		if (pw_remain <= 16) {
			$('#pwcheck_length').css('color', 'red');
		}
		
		if (pw_remain <= 8 && pw_remain >= 0) {
			$('#pwcheck_length').css('color', 'green');
		}

		if (chkPassword.test($(this).val())) {
			$('#pwcheck_language').css('color', 'green');
		}

	});

	// 비밀번호확인을 타이핑 할 때 마다 함수발생
	$('#customer_pw_confirm').keyup(function() {
		if ($('#customer_pw_confirm').val() === $('#customer_pw').val()) {
			$('#pwcheck_confirm').css('color', 'green');
		} 
		if ($('#customer_pw_confirm').val() != $('#customer_pw').val()) {
			$('#pwcheck_confirm').css('color', 'red');
		}

	});
	
	//전화번호에 숫자외에 문자들은 들어올수 없게 만드는 함수
	$("#customer_tel").on("focusout", function() {
		var x = $(this).val();
		if (x.length > 0) {
			if (x.match(replaceNotInt)) {
				x = x.replace(replaceNotInt, "");
			}
			$(this).val(x);
		}
	}).on("keyup", function() {
		$(this).val($(this).val().replace(replaceNotInt, ""));
	});

	$("#customer_name").on("focusout", function() {
		var x = $(this).val();
		if (x.length > 0) {
			if (x.match(replaceNotString)) {
				x = x.replace(replaceNotString, "");
			}
			$(this).val(x);
		}
	}).on("keyup", function() {
		$(this).val($(this).val().replace(replaceNotString, ""));
	});
	
	// 아이디 중복확인 버튼을 클릭 시 발생하는 함수
	$('#id_check').click(function() {

		if ($('#customer_id').val().length < 6 || $('#customer_id').val().length > 13) {
			alert("ID는 6글자 ~ 13글자까지 가능합니다.");
			return;
		} else if (!idcheck_eng.test($('#customer_id').val())) {
			alert("ID는 영어와 숫자만 가능합니다.");
			return;
		}else {	
			$.ajax({
				url: "/brokurly/customer/idcheck",
				type: "GET",
				data:{
					"customer_id": $('#customer_id').val()
				},
				success: function(data) {
					if (data == '') {
						id_check_bool=true;
						alert("사용가능한 아이디입니다.");
						$('#idcheck').css('color', 'green');
					} else {
						alert("이미 사용중인 아이디입니다.");
						id_check_bool=false;
						$('#idcheck').css('color', 'red');
					}
				},
				error: function() {
					alert("서버에러");
					var html = "<tr><td colspan='3' style='color red'>에러</td></tr> ";

					$('#idcheck').empty();
					$('#idcheck').append(html);
				}
			})
		}
	});

	//이메일 중복확인버튼 클릭 시 발생하는 함수
	$('#email_check').click(function() {
		if (!emailCheck.test($('#customer_email').val())) {
			alert("이메일 형식이 잘못되었습니다.");
			$('#customer_email').focus();
			return;
		} else {
			$.ajax({
				url: "/brokurly/customer/emailcheck",
				type: "GET",
				data:{
					"customer_email": $('#customer_email').val()
				},
				success:function(data) {
					if (data == '') {
						alert("사용가능한 이메일입니다.");
						email_check_bool=true;
						console.log(email_check);
					} else {
						alert("이미 가입된 이메일입니다.");
						email_check_bool=false;
					}
				},
				error: function() {
					alert("서버에러");

				}
			})
		}
	});
	
	//전화번호 중복확인 클릭시 발생하는 함수
	$('#tel_check').click(function() {
		if (!tel_numberCheck.test($('#customer_tel').val())) {
			alert("핸드폰번호 형식이 잘못되었습니다.");
			$('#customer_tel').focus();
			return;
		} else {
			$.ajax({
				url: "/brokurly/customer/telcheck",
				type: "GET",
				data: {
					"customer_tel": $('#customer_tel').val()
				},
				success:function(data) {
					if (data == '') {
						alert("사용가능한 전화번호입니다.")
						tel_check_bool = true;
					} else {
						alert("이미가입된 전화번호 입니다.");
						tel_check_bool = false;
					}
				},
				error:function(){
					alert("서버에러");
				}
			})
		}
	});

	// 인증번호를 받고 인증번호 확인버튼 클릭시 발생하는 함수
	$('#number_check').click(function() {
		if ($('#check').val() == "000000"){
			alert("인증에 성공했습니다.");
			number_check_bool = true;
		} else {
			alert("인증에 실패했습니다.");
			number_check_bool = false;
		}
	});
	
	// 주소검색 클릭시 발생하는 함수
	$('#findAddr').click(function() {
		new daum.Postcode({
			oncomplete : function(data) {

				
				console.log(data);

				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
				// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var roadAddr = data.roadAddress; // 도로명 주소 변수
				var jibunAddr = data.jibunAddress; // 지번 주소 변수
				// 우편번호와 주소 정보를 해당 필드에 넣는다.
//				document.getElementById('member_post').value = data.zonecode;
				if (roadAddr !== '') {
					document.getElementById("customer_address").value = roadAddr;
				} else if (jibunAddr !== '') {
					document.getElementById("customer_address").value = jibunAddr;
				}
			}
		}).open();	
	});
	
	// 재검색을 클릭시 발생하는 함수
	$('#refindAddr').click(function() {
		new daum.Postcode({
			oncomplete : function(data) {
				console.log(data);

				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
				// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var roadAddr = data.roadAddress; // 도로명 주소 변수
				var jibunAddr = data.jibunAddress; // 지번 주소 변수
				// 우편번호와 주소 정보를 해당 필드에 넣는다.
//				document.getElementById('member_post').value = data.zonecode;
				if (roadAddr !== '') {
					document.getElementById("customer_address").value = roadAddr;
				} else if (jibunAddr !== '') {
					document.getElementById("customer_address").value = jibunAddr;
				}
			}
		}).open();	
	});
	
	$("#agreement_box1").change(function(){
		if ($("#agreement_box1").is(":checked")) {
			agreement_box1_bool = true;
		} else {
			agreement_box1_bool = false;
		}
	});
	
	$("#agreement_box2").change(function(){
		if ($("#agreement_box2").is(":checked")) {
			agreement_box2_bool = true;
		} else {
			agreement_box2_bool = false;
		}
	});

	$("#agreement_box3").change(function(){
		if ($("#agreement_box3").is(":checked")) {
			agreement_box3_bool = true;
		} else {
			agreement_box3_bool = false;
		}
	});

	$('#agreement_allbox').change(function() {
		if ($('#agreement_allbox').is(":checked")) {
			agreement_box1_bool = true;
			agreement_box2_bool = true;
			agreement_box3_bool = true;			
		} else {
			agreement_box1_bool = false;
			agreement_box2_bool = false;
			agreement_box3_bool = false;						
		}
	});
	
	// 회원가입 버튼 클릭시 이벤트 발생
	$('#signup').click(function(){
		const customer_id = $('#customer_id').val();
		const customer_pw = $('#customer_pw').val();
		const customer_pw_confirm = $('#customer_pw_confirm').val();
		const customer_name = $('#customer_name').val();
		const customer_email = $('#customer_email').val();
		const customer_tel = $('#customer_tel').val();
		const cusotmer_address = $('#customer_address').val();
		const customer_detailaddress = $('#customer_detailaddress').val();
		const customer_gender = $('#customer_gender').val();
		const customer_birth = $('#customer_bitrh').val();
		const customer_year = $('#customer_year').val();
		const customer_month = $('#customer_month').val();
		const customer_day = $('#customer_day').val();
		const int_customer_month = parseInt(customer_month);
		
		//아이디 체크
		if (customer_id == '') {
			alert("아이디를 입력해주세요");
			$('#customer_id').focus();
			return;
		}
		if (customer_id.length < 6 || customer_id.length > 13) {
			alert("ID는 6글자 ~ 13글자까지 가능합니다.");
			$('#customer_id').focus();
			return;
		}
		
		if (!idcheck_eng.test(customer_id)) {
			alert("ID는 영어와 숫자만 가능합니다.");
			$('#customer_id').focus();
			return;
		}
		
		// 비밀번호 체크
		if (customer_pw.length < 8 || customer_pw.length > 16) {
			alert("비밀번호는 8자리 ~ 16자리 이내로 입력해주세요.");
			$('#customer_pw').focus();
			return;
		} 

		if (!chkPassword.test(customer_pw)) {
			alert("영문, 숫자, 특수문자를 혼합하여 입력해주세요.");
			$('#customer_pw').focus();
			return;
		} 

		if (customer_pw != customer_pw_confirm){
			console.log(customer_pw);
			console.log(customer_pw_confirm);
			alert("비밀번호가 다릅니다");
			$('#customer_pw').focus();
			return;
		}

		if (customer_name == '') {
			alert("이름을 입력해주세요");
			$('#customer_name').focus();
			return;
		} 

		if (customer_name.length < 2 || customer_name.length > 13) {
			alert("이름은 2글자에서 13글자까지만 가능합니다.");
			$('#customer_name').focus();
			return;
		}

		if (customer_email == '') {
			alert("이메일을 입력해주세요");
			$('#customer_email').focus();
			return;
		}  

		if (customer_address == '') {
			alert("주소를 검색해주세요.");
			return;
		}

		if (customer_detailaddress == '') {
			alert("상세주소를 입력해주세요.");
			return;
		}

		if (customer_birth == '') {
			alert("생일을 입력해주세요.");
			return;
		}
		
		if (parseInt(customer_year) < 1900 || parseInt(customer_year) > 2021) {
			alert("생'년'월일이 잘못되었습니다");
			return;
		}
	
		if (parseInt(customer_month) < 0 || parseInt(customer_month) > 12) {
			alert("생년'월'일이 잘못되었습니다");
			return;
		}

		if (int_customer_month == 2) {
			if (parseInt(customer_day) < 0 || parseInt(customer_day) > 28) {
				alert("생년월'일'이 잘못되었습니다.");
				return;
			}
		} else if (int_customer_month == 1 || int_customer_month == 3  || int_customer_month == 5 || int_customer_month == 7 ||
				   int_customer_month == 8 || int_customer_month == 10 || int_customer_month == 12) {
			if (parseInt(customer_day) < 0 || parseInt(customer_day) > 31) {
				alert("생년월'일'이 잘못되었습니다.");
				return;
			}
		} else {
			if (parseInt(customer_day) < 0 || parseInt(customer_day) > 30) {
				alert("생년월'일'이 잘못되었습니다.");
				return;
			}
		}

		if (!id_check_bool) {
			alert("아이디 중복체크를 해주세요.");
			$('#id_check').focus();
			return;
		}else if (!email_check_bool) {
			alert("이메일 중복체크를 해주세요.");
			$('#email_check').focus();
			return;
		} else if (!tel_check_bool) {
			alert("전화번호 중복체크를 해주세요.")
			$('#tel_check').focus();
			return;
		} else if (!number_check_bool) {
			alert("인증번호 확인을 해주세요.");
			$('#number_check').focus();
		} else if (!agreement_box1_bool) {
			alert("이용 약관을 체크해주세요")
			return;
		} else if (!agreement_box2_bool) {
			alert("개인정보 수집·이용 동의를 체크해주세요.")
			return;
		} else if (!agreement_box3_bool) {
			alert("본인은 만 14세 이상입니까?")
			return;
		} else {
			alert("회원가입에 성공하셨습니다");
			$('#signForm').submit();
		}
	});
});
/**
 * 
 */
 $(function() {
    var email_chk_bool = false;
	var tel_check_bool = false;
    var number_check_bool = false;
    var now_pw_check_bool = false;
    var now_update_pw_check_bool = false;

    var chk_new_password = new RegExp("^(?=.*[0-9])(?=.*[a-z])(?=.*[$@!%*#?&])[a-z0-9$@!%*#?&]{8,16}$");
    var chk_three_num = /^[0-9]{3,16}$/;

	var tel_numberCheck = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
    var chk_email = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	var replaceNotInt = /[^0-9]/gi;
    var replaceNotString = /[0-9a-zA-Z$@!%*#?&]/gi;

    var now_pw = $('#now_pw');
    var update_pw = $('#customer_pw');
    var pwcheck_now = $('#pwcheck_now'); // 현재 비밀번호와 다르게 입력
    var pwcheck_length = $('#pwcheck_length'); // 8자 이상 입력
    var pwcheck_language = $('#pwcheck_language'); // 영문/숫자/특수문자(공백제외)만 허용하며, 2개이상 조합
    var pwcheck_num = $('#pwcheck_num'); // 동일한 숫자 3개 이상 연속 사용 불가
    var chk_update_pw = $('#chk_update_pw');
    var confirm_pw = $('#confirm_pw');
    var customer_name = $('#customer_name');
    var customer_email = $('#customer_email');
    var chk_email_btn = $('#email_chk_btn');
	var customer_tel = $('#customer_tel');
	var tel_check = $('#tel_check');
    var number_check = $('#number_check');
    var check = $('#check');
    var update_btn = $('#update_btn');
    var delete_btn = $('#delete_btn');
    var code_num = $('.code_num');
    var code_num_guide = $('.code_num_guide');

	update_pw.keyup(function() {
		var pw_length = $(this).val().length;
		var pw_remain = 16 - pw_length;

		if (!chk_new_password.test($(this).val())) {
			pwcheck_language.css('color', 'red');
		}

		if (pw_remain <= 16) {
			pwcheck_length.css('color', 'red');
		}

        if (chk_three_num.test($(this).val())) {
            pwcheck_num.css('color', 'red');
        }

		if (now_pw.val() === update_pw.val()) {
            pwcheck_now.css('color', 'red');
        }
		
        if (chk_new_password.test($(this).val())) {
            pwcheck_language.css('color', 'green');
        }

		if (pw_remain <= 8 && pw_remain >= 0) {
			pwcheck_length.css('color', 'green');
		}

        if (!chk_three_num.test($(this).val())) {
            pwcheck_num.css('color', 'green');
        }

		if (now_pw.val() !== update_pw.val()) {
            pwcheck_now.css('color', 'green');
        } 
	});

    chk_update_pw.keyup(function() {
        if (chk_update_pw.val() != update_pw.val()) {
            confirm_pw.css('color', 'red');
        }

        if (chk_update_pw.val() === update_pw.val()) {
            confirm_pw.css('color', 'green');
        }
    });

	customer_name.on("focusout", function() {
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

    chk_email_btn.click(() => {
        if (!chk_email.test(customer_email.val())) {
            alert('이메일 형식이 잘못되었습니다.');
            customer_email.focus();
            return;
        } else {
            $.ajax({
                url: '/brokurly/customer/mypage/emailchk',
                type: 'GET',
                data: {
                    'customer_email': customer_email.val()
                },
                success: function(data) {
                    if (data == '') {
                        alert('사용가능한 이메일입니다.');
                        email_chk_bool = true;
                    } else {
                        alert('이미 인증된 이메일입니다.\n입력한 이메일을 확인해주세요.');
                        email_chk_bool = false;
                    }
                },
                error: function() {
                    alert('서버에러');
                }
            });
        }
    });

	customer_tel.on("focusout", function() {
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

	
	tel_check.click(() => {
		if (!tel_numberCheck.test(customer_tel.val())) {
			alert('핸드폰번호 형식이 잘못되었습니다.');
			customer_tel.focus();
			return;
		} else {
			$.ajax({
				url: '/brokurly/customer/mypage/telchk',
				type: 'GET',
				data: {
					'customer_tel': customer_tel.val()
				},
				success: function(data) {
					if (data == '') {
						alert('사용가능한 전화번호입니다.');
						tel_check_bool = true;

                        if (tel_check_bool) {
                            code_num.css('display', 'block');
                            code_num_guide.css('display', 'block');
                        }
					} else {
						alert('이미 인증된 전화번호입니다.\n입력한 번호를 확인해주세요.');
						tel_check_bool = false;
					}
				},
				error: function(){
					alert('서버에러');
				}
			})
		}
	});
	
	number_check.click(() => {
		if (check.val() == "000000"){
			alert("인증에 성공했습니다.");
			number_check_bool = true;
		} else {
			alert("인증에 실패했습니다.");
			number_check_bool = false;
		}
	});
    
    update_btn.click(() => {
        const now_pw = $('#now_pw').val();
        const now_customer_pw = $('#now_customer_pw').val();
        const update_pw = $('#customer_pw').val();
		const chk_update_pw = $('#chk_update_pw').val();
        const customer_name = $('#customer_name').val();
        const customer_email = $('#customer_email').val();
        const customer_tel = $('#customer_tel').val();
        const customer_year = $('#customer_year').val();
		const customer_month = $('#customer_month').val();
		const customer_day = $('#customer_day').val();
        const int_customer_month = parseInt(customer_month);

        if (now_pw == now_customer_pw) {
            now_pw_check_bool = true;
        } else {
            now_pw_check_bool = false;
        }

        if (now_pw == update_pw) {
            now_update_pw_check_bool = false;
        } else {
            now_update_pw_check_bool = true;
        }

        if (update_pw.length < 8 || update_pw.length > 16) {
			alert("비밀번호는 8자리 ~ 16자리 이내로 입력해주세요.");
			return;
		} 

		if (!chk_new_password.test(update_pw)) {
			alert("영문, 숫자, 특수문자를 혼합하여 입력해주세요.");
			return;
		} 

		if (update_pw != chk_update_pw){
			alert("비밀번호가 다릅니다");
			return;
		}

        if (customer_name.length < 2 || customer_name.length > 13) {
			alert("이름은 2글자에서 13글자까지만 가능합니다.");
			return;
		}

        if (customer_email == '') {
			alert("이메일을 입력해주세요");
			return;
		}

		if (parseInt(customer_year) < 1900 || parseInt(customer_year) > 2021) {
			alert("생년월일이 잘못되었습니다");
			return;
		}
	
		if (parseInt(customer_month) < 0 || parseInt(customer_month) > 12) {
			alert("생년월일이 잘못되었습니다");
			return;
		}

		if (int_customer_month == 2) {
			if (parseInt(customer_day) < 0 || parseInt(customer_day) > 28) {
				alert("생년월일이 잘못되었습니다.");
				return;
			}
		} else if (int_customer_month == 1 || int_customer_month == 3  || int_customer_month == 5 || int_customer_month == 7 ||
				   int_customer_month == 8 || int_customer_month == 10 || int_customer_month == 12) {
			if (parseInt(customer_day) < 0 || parseInt(customer_day) > 31) {
				alert("생년월일이 잘못되었습니다.");
				return;
			}
		} else {
			if (parseInt(customer_day) < 0 || parseInt(customer_day) > 30) {
				alert("생년월일이 잘못되었습니다.");
				return;
			}
		}

        if (!now_pw_check_bool) {
            alert("현재 비밀번호를 확인해주세요.");
            return;
        } else if (!now_update_pw_check_bool) {
            alert("현재 비밀번호와 변경하는 비밀번호가 같습니다.");
            return;
        } else if (!email_chk_bool) {
            alert("이메일 중복체크를 해주세요.");
			return;
        } else if (!tel_check_bool) {
            alert("전화번호 중복체크를 해주세요.")
			return;
        } else if (!number_check_bool) {
            alert("전화번호 중복체크를 해주세요.")
			return;
        } else {
            alert("회원정보수정에 성공하셨습니다.")
			$('#updateForm').submit();
        }
    });
    
    delete_btn.click(() => {
    	var select = confirm("정말로 탈퇴하시겠습니까");
    	if(select) {
    		$.ajax({
    			url: "/brokurly/customer/delete",
    			type: "POST",
    			data: {
    				"customer_id": $('#customer_id').val()
    			},
    			success:function(){
    				alert("탈퇴가 정상적으로 이루어졌습니다.");
    				$('#deleteForm').submit();
    			},
    			error:function(){
    				alert("서버에러");
    			}
    		});    		
    	}
    });
});
/**
 * 
 */

 $(function() {
    
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
	
	$('#myinfo').click(() => {
		$('#myinfoForm').submit();
	});
	
});

$(function() {
    var pw_chk_btn = $('#pw_chk_btn');
    var update_btn = $('#update_btn');
    var pw_guide = $('.pw_guide');
    
    pw_chk_btn.click(() => {
        $.ajax({
            url: '/brokurly/customer/mypage/nowpwchk',
            type: 'GET',
            data: {
                'customer_id': $('#customer_id').val(),
                'customer_pw': $('#customer_pw').val()
            },
            success: function(data) {
                if (data == '') {
                    alert('비밀번호를 정확하게 입력해주세요.');
                    return;
                } else {
                    $('#myinfo2Form').submit();
                }
            },
            error: function() {
                alert('서버 오류');
            }
        });
    });

    update_btn.click(() => {
        $.ajax({
            url: '/brokurly/customer/mypage/nowpwchk',
            type: 'GET',
            data: {
                'customer_id': $('#customer_pw').val(),
                'customer_pw': $('#now_customer_pw').val()
            },
            success: function(data) {
                if (data =='') {
                    pw_guide.css('display', 'block');
                    pw_guide.css('color', 'red')
                } else {
                    pw_guide.css('display', 'block');
                    pw_guide.css('color', 'green');
                }
            },
            error: function() {
                alert('서버 오류');
            }
        });
    });
});

$(function() {
    var email_chk_bool = false;

    var chk_new_password = new RegExp("^(?=.*[0-9])(?=.*[a-z])(?=.*[$@!%*#?&])[a-z0-9$@!%*#?&]{8,16}$");
    var chk_three_num = /^[0-9]{3,16}$/;
    var chk_name_kor = /[^가-힣]+/g;
    var chk_email = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
    var replace_not_string = /[0-9a-zA-Z$@!%*#?&]/gi;

    var now_pw = $('.now_pw');
    var update_pw = $('#update_pw');
    var pwcheck_now = $('#pwcheck_now'); // 현재 비밀번호와 다르게 입력
    var pwcheck_length = $('#pwcheck_length'); // 8자 이상 입력
    var pwcheck_language = $('#pwcheck_language'); // 영문/숫자/특수문자(공백제외)만 허용하며, 2개이상 조합
    var pwcheck_num = $('#pwcheck_num'); // 동일한 숫자 3개 이상 연속 사용 불가
    var chk_update_pw = $('#chk_update_pw');
    var confirm_pw = $('#confirm_pw');
    var customer_name = $('#customer_name');
    var customer_email = $('#customer_email');
    var chk_email_btn = $('#email_chk_btn');

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
		
        if (chk_new_password.test($(this).val())) {
            pwcheck_language.css('color', 'green');
        }

		if (pw_remain <= 8 && pw_remain >= 0) {
			pwcheck_length.css('color', 'green');
		}

        if (!chk_three_num.test($(this).val())) {
            pwcheck_num.css('color', 'green');
        }
	});

    chk_update_pw.keyup(function() {
        if (chk_update_pw.val() != update_pw.val()) {
            confirm_pw.css('color', 'red');
        }

        if (chk_update_pw.val() === update_pw.val()) {
            confirm_pw.css('color', 'green');
        }

        if (now_pw.val() === update_pw.val()) {
            pwcheck_now.css('color', 'red');
        }

        if (now_pw.val() != update_pw.val()) {
            pwcheck_now.css('color', 'green');
        }
    });

    customer_name.on("focustout", () => {
        var x = $(this).val();
        if (x.length > 0) {
            if (x.match(replace_not_string)) {
                x = x.replace(replace_not_string, "");
            }
            $(this).val(x);
        }
    }),on("keyup", () => {
        $(this).val($(this).val().replace(replace_not_string, ""));
    });

    chk_email_btn.click(() => {
        if (!chk_email.test($(customer_email).val())) {
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
                        alert('사용가능한 이메일 입니다.');
                        email_chk_bool = true;
                    } else {
                        alert('이미 가입된 이메일입니다.');
                        email_chk_bool = false;
                    }
                },
                error: function() {
                    alert('서버에러');
                }
            });
        }
    });
});

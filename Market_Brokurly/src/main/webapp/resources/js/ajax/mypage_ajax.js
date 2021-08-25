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
